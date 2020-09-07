require 'rails_helper'

RSpec.describe Idea, type: :model do
  describe 'association' do
    it{ is_expected.to have_many(:comments) }
  end

  it 'has a name' do
    idea = Idea.create!(name: 'My Awesome Idea Name')
    second_idea = Idea.create!(name: 'My second Idea Name')
    expect(second_idea.name).to eq('My second Idea Name')
  end

  it 'has a description' do
    idea = Idea.create!(name: 'Test Idea', description: 'My idea description')
    expect(idea.description).to eq('My idea description')
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
  end
end
