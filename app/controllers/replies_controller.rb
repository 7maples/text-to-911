class RepliesController < ApplicationController

  def create
    @reply = Reply.new(params[:reply])
    binding.pry

    @message_id = Message.find(params[:reply][:message_id])
    @reply.save
    redirect_to messages_path
  end
end
