class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @reply = Reply.new
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    @message.save
    render nothing: true
  end
end

