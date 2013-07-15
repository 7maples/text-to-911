class RepliesController < ApplicationController

  def create
    @reply = Reply.new(params[:reply])
    @message_id = Message.find(params[:reply][:message_id])
    @reply.save
    @reply.send_reply
    redirect_to messages_path
  end
end
