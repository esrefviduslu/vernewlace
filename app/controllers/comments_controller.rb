class CommentsController < ApplicationController
	

	def create 
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to place_path(@comment.place)
		else
			render place_path
		end
	end

	def comment_params
		params.require(:comment).permit(:body, :place_id)
	end	
	
end
