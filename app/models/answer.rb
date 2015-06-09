class Answer < ActiveRecord::Base
	belongs_to :question
	
	validates :title, :body, :question_id, presence: true
	validates :title, length: 5..140
	validates :body, length: 10..1000
end
