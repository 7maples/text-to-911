class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def create
    @message = Message.new(:body => params[:Body], :phone_number => params[:From])
    @message.save
    render nothing: true
  end


end


