class CreateAppXes < ActiveRecord::Migration[6.1]
  def change
    create_table :app_xes do |t|
      t.string :title
      t.date :published

      t.timestamps
    end
  end
end
