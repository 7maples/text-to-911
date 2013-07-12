class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def create
    @message = Message.new(params[:message])
    @message.save
    render nothing: true
  end


end


