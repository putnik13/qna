require 'rails_helper'

RSpec.describe AnswersController, type: :controller do
	let(:answer) { create(:answer) }
	let(:question) { create(:question) }
	
	describe 'POST #create' do

		context 'with valid attributes' do
			it 'redirects to question' do
               	post :create, question_id: question, answer: attributes_for(:answer)
				expect(response).to redirect_to question_path(question)
			end

			it 'saves the new answer in the database' do
				expect { post :create, question_id: question, answer: attributes_for(:answer) }.to change(question.answers, :count).by(1)
			end

		end
 
		context 'with invalid attributes' do
			
			it 'new answer does not exist' do
				expect { post :create, question_id: question, answer: attributes_for(:invalid_answer) }.to_not change(Answer, :count)
			end

			it 'redirects to the show view' do
				post :create, question_id: question, answer: attributes_for(:invalid_answer)
				expect(response).to render_template 'questions/show'
			end
		end
 
	end
end
