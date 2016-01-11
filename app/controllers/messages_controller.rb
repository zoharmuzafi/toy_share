class MessagesController < ApplicationController

	def new
	end
  def create
  	message_params = params.require(:message).permit(:content, :chat_id, :user_id) 
  	recipient_id = message_params["user_id"]
  	message_params["user_id"] = current_user.id
  	new_message = Message.new(message_params)
  	if new_message.save
	  	if new_message.chat_id
	  		chat = Chat.find(new_message.chat_id)
	  		new_message_chat = chat.messages.new(message_params)
	  	else
	  		recipient = User.find(recipient_id)
	  		chat = Chat.create
	  		current_user.chats  << chat
	  		recipient.chats << chat
	  		chat.messages << new_message
	  	end
	  	flash[:notice] = "Your message was sent to #{recipient.f_name}"
	  	redirect_to chats_path
	  else
	  	flash[:error] = "Your message wasn't sent"
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
