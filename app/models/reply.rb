class Reply < ActiveRecord::Base
  attr_accessible :body, :message_id

  belongs_to :message

  validates_presence_of :body, :message_id

  def dispatch
    twilio_client = Twilio::REST::Client.new(twilio_sid, twilio_token)

    twilio_client.account.sms.messages.create(
      :from => twilio_phone_number,
      :to => message.phone_number,
      :body => body)
  end

  def twilio_sid
    ENV["TWILIO_SID"]
  end

  def twilio_token
    ENV["TWILIO_TOKEN"]
  end

  def twilio_phone_number
    ENV["TWILIO_PHONE_NUMBER"]
  end
end
