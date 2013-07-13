class RepliesController < ApplicationController

  def new
    @reply = Reply.new
  end

  def create
    @reply = Reply.new(params[:reply])
    @reply.save
    redirect_to messages_path
  end
end
