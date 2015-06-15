FactoryGirl.define do
  factory :question do
    title "MyString is not to short"
	body "MyText is not to short"
  end

  factory :invalid_question, class: Question do
    title nil
	body nil
  end

end
