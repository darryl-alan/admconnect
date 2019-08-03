class ChatController < ApplicationController
  before_action :require_user, only: [:index]

  def index
    @message = Message.new
    @messages = Message.all
  end
end
