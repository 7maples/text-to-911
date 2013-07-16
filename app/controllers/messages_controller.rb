class MessagesController < ApplicationController

  def index
    @messages = Message.order('status ASC')
    @reply = Reply.new
  end

  def create
    message = Message.new(body: params[:Body], phone_number: params[:From])
    message.save
    render nothing: true
  end
end



