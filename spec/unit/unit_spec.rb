# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: 2, publishedDate: Date.parse('31-12-2022'))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid author' do
    subject.author = nil;
    expect(subject).not_to be_valid
  end

  it 'is not valid with invalid price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid with invalid date' do
    subject.publishedDate = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end