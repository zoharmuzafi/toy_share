class ChatsController < ApplicationController
  def index
  	@chats=current_user.chats 
  end
  def create(user)
  	chat = Chat.new
  	current_user_chat = User_chats.new(current_user.id, chat.id)
  	reciver_chat = User_chats.new(user.id, chat.id)
  	chat.save
  	current_user_chat.save
  	reciver_chat.save
  end

  def destroy(chat_id)
  	chat = Chat.find(chat_id)
  	chat.destroy
  	redirect_to chats_path
  end
end
