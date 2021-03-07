# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'First Book',
                        author: "yifei",
                        genre: "Romance",
                        price: 16,
                        published_date: nil,
                        )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is valid with a valid title' do
    expect(subject).to be_valid
  end
  it 'is not valid with a nil title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is valid with a valid author' do
    expect(subject).to be_valid
  end

  it 'is not valid with a nil author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid with a valid price' do

    expect(subject).to be_valid
  end

  it 'is not valid with a nil published_date' do

    expect(subject).to be_valid
  end
end
