# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'jk rowling')
  end

  it 'is valid with valid attributes (author)' do
    expect(subject).to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', price: '15.65')
  end

  it 'is valid with valid attributes (price)' do
    expect(subject).to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', published_date: '2020-1-17')
  end

  it 'is valid with valid attributes (published_date)' do
    expect(subject).to be_valid
  end
end