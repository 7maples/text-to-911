class Message < ActiveRecord::Base
  attr_reader :body, :phone_number

  validates_presence_of :body, :phone_number

  def initialize(phone_number)
    @phone_number = phone_number
  end

  def self.construct(phone_number)
    new(phone_number)
  end

  def register
    send_message(self.phone_number, register_message)
  end

  private

  def send_message(phone_number, body)
    client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => phone_number,
      :body => body )
  end

  def receive_message
    #def index
    # let's pretend that we've mapped this action to
    # http://localhost:3000/sms in the routes.rb file

    message_body = params["Body"]
    from_number = params["From"]

    SMSLogger.log_text_message from_number, message_body
    #trigger create action
  end

  def client
    Twilio::REST::Client.new(twilio_sid, twilio_token)
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

  def register_message
    "Please register before using this application"
  end
end
