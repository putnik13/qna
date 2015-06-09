require 'rails_helper'

RSpec.describe Question, type: :model do
	describe "validation" do
  	it { should validate_presence_of :title }
	it { should validate_presence_of :body }
	it { should validate_length_of(:title).is_at_least(5).is_at_most(140) }
    it { should validate_length_of(:body).is_at_least(10).is_at_most(1000) }
	end
	
	describe "assotiations" do
		it { should have_many(:answers).dependent(:destroy)}
	end
end
