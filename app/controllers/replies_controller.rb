class RepliesController < ApplicationController

  def create
    @reply = Reply.new(params[:reply])
    @reply.save
    @reply.dispatch
    @reply.message.update_attributes(status: 'replied_to')
    redirect_to messages_path
  end
end
