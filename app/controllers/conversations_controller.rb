class ConversationsController < ApplicationController
    # before_action :authenticate_user!

    # Conversation controller is used to log the creation of conversations between to users in the converstion model
    # Index only shows conversations where a conversation has been created between two users
    # I followed a medium tutorial to help code this controller - reference below
    # Reference - https://medium.com/@danamulder/tutorial-create-a-simple-messaging-system-on-rails-d9b94b0fbca1
    def index
        @users = User.where.not(id: current_user.id)
        @conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
    end

    def create
        if Conversation.between(params[:sender_id], params[:receiver_id]).present?
            @conversation = Conversation.between(params[:sender_id], params[:receiver_id]).first
        else
            @conversation = Conversation.create!(conversation_params)
        end
        redirect_to conversation_messages_path(@conversation)
    end
    
    private
        def conversation_params
            params.require(:user).permit(:sender_id, :receiver_id)
        end
end
