FactoryGirl.define do
  factory :text_message do
    body "Help I'm trapped"
    phone_number "360-555-6240"
    status "received"

    # factory :invalid_patient do
    #   first_name nil
    #   last_name nil
    # end
  end
end
