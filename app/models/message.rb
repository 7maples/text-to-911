class Message < ActiveRecord::Base
  attr_accessible :body, :phone_number

  validates_presence_of :body, :phone_number


  private

  # def send_message(phone_number, body)
  #   client.account.sms.messages.create(
  #     :from => "+1#{twilio_phone_number}",
  #     :to => phone_number,
  #     :body => body )
  # end

end
