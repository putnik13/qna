FactoryGirl.define do
  
  factory :answer do
    title "MyString23"
	body "MyText MyText MyText"
	question_id 1
  end


  factory :invalid_answer, class: Answer do
    title nil
	body nil
  end
end
