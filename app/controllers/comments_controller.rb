class CommentsController < ApplicationController

	load_and_authorize_resource

def create
	 @comment.save
    redirect_to @comment.commentable
end

private

def comment_params

params.require(:comment).permit(:user_id, :commentable_type, :commentable_id,
	:description)
	
end

end	