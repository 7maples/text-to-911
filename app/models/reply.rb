class Reply < ActiveRecord::Base
  attr_accessible :body, :message_id

  belongs_to :message

  validates_presence_of :body, :message_id

  def send_reply
    twilio_sid = ENV["TWILIO_SID"]
    twilio_token = ENV["TWILIO_TOKEN"]
    twilio_phone_number = ENV["TWILIO_PHONE_NUMBER"]
    sender_phone_number = ENV["SENDER_PHONE_NUMBER"]

    twilio_client = Twilio::REST::Client.new(twilio_sid, twilio_token)

    twilio_client.account.sms.messages.create(
      :from => twilio_phone_number,
      :to => sender_phone_number,
      :body => body)
  end
end
