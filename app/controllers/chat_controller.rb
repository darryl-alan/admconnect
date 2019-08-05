class ChatController < ApplicationController
  before_action :require_user, only: [:index]

  def index
    @message = Message.new
    @messages = Message.custom_display #Message.all
  end
end
