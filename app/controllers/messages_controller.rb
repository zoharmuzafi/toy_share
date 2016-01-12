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
	  		toy = Toy.find(params.require(:message).permit(:toy_id)["toy_id"])
	  		toy.chats << chat
	  		current_user.chats  << chat
	  		recipient.chats << chat
	  		chat.messages << new_message
	  	end
	  	flash[:notice] = "Your message was sent"
	  	redirect_to chats_path
	  else
	  	flash[:error] = new_message.full_messages.join(", ")
  		redirect_to new_message_path
	  end
	end

  def destroy
  	message_id = params[:id]
  	message = Message.find(message_id)
  	if message.destroy
  		flash[:notice] = "Your message was deleted"
  	else
  	flash[:error] = new_message.full_messages.join(", ")
  	redirect_to chats_path
  end
end
end
