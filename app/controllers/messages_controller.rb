class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def create
    @message = Message.new(:body => params[:Body], :phone_number => params[:From])
    @message.save
    render nothing: true
  end

  def process_sms
    # @city = params[:FromCity].capitalize
    # @state = params[:FromState]
    render 'process_sms.xml.erb', :content_type => 'text/xml'
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
end


