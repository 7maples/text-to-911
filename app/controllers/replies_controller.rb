class RepliesController < ApplicationController

  def create
    @reply = Reply.new(params[:reply])
    @reply.save
    redirect_to messages_path
  end
end
