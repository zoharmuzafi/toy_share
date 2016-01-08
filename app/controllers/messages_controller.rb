class MessagesController < ApplicationController
  	
	# def index
	# 	@messages = current_user.messages
	# end

	def new
	end
  def create
  	message_params = params.require(:message).permit(:content, :chat_id, :user_id) 
  	new_message_user = current_user.messages.new(message_params)
  	chat=Chat.find(message.chat_id)
  	if chat
  		new_message_chat = chat.messages.new(message_params)
  	else
  		user = User.find(message_params["user_id"])
  		chat = Chat.new(user)
  		new_message_chat = chat.messages.new(message_params)
  		current_user.chats(chat).save
  		user.chats(chat).save
  	end
  	
  	if new_message_chat.save && new_message_user.save_message 
  		flash[:notice] = "Message was sent"
  		redirect_to toys_path
  	else
  		flash[:error] = "Message wasn't sent"
  		redirect_to new_message_path
  	end
  end

  def destroy
  	message_id = params[:id]
  	message = Message.find(message_id)
  	message.destroy
  	redirect_to chats_path
  end
end
