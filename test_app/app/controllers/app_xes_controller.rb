class AppXesController < ApplicationController
  before_action :set_app_x, only: %i[ show edit update destroy ]

  # GET /app_xes or /app_xes.json
  def index
    @app_xes = AppX.all
  end

  # GET /app_xes/1 or /app_xes/1.json
  def show
  end

  # GET /app_xes/new
  def new
    @app_x = AppX.new
  end

  # GET /app_xes/1/edit
  def edit
  end

  # POST /app_xes or /app_xes.json
  def create
    @app_x = AppX.new(app_x_params)

    respond_to do |format|
      if @app_x.save
        format.html { redirect_to app_x_url(@app_x), notice: "App x was successfully created." }
        format.json { render :show, status: :created, location: @app_x }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @app_x.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_xes/1 or /app_xes/1.json
  def update
    respond_to do |format|
      if @app_x.update(app_x_params)
        format.html { redirect_to app_x_url(@app_x), notice: "App x was successfully updated." }
        format.json { render :show, status: :ok, location: @app_x }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @app_x.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_xes/1 or /app_xes/1.json
  def destroy
    @app_x.destroy

    respond_to do |format|
      format.html { redirect_to app_xes_url, notice: "App x was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_x
      @app_x = AppX.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def app_x_params
      params.require(:app_x).permit(:title, :published)
    end
end
