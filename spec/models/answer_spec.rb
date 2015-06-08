require 'rails_helper'

RSpec.describe Answer, type: :model do
  	describe "validation" do
		it { should validate_presence_of :title }
		it { should validate_presence_of :body }
		it { should validate_presence_of :question_id }
	end
	describe "assotiations" do
		it { should belong_to :question }
	end
end
