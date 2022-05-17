class CommentsController < ApplicationController
    def create
        @comment = current_user.comments.new(comment_params)
        @comment.save!
        if !@comment.save!
            flash.now[:notice] = @comment.errors.full_messages
        end
        redirect_to service_path(params[:service_id])
    end

    private

    def comment_params
        params.require(:comment).permit(:content).merge(service_id: params[:service_id])
    end
end
