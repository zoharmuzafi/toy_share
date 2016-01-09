class ChatsController < ApplicationController
  def index
  	@chats=current_user.chats 
  end
  def create
  	chat = Chat.new
  	chat.save
  end

  def destroy(chat_id)
  	chat = Chat.find(chat_id)
  	chat.destroy
  	redirect_to chats_path
  end
end
