class CommentsController < ApplicationController
  
  before_action :authenticate_customer!
	before_action :set_place
	before_action :set_comment, only: [:destroy]
	before_action :authorize_customer!, only: [:destroy]


	def create 
		@comment = @place.comments.new(comment_params)
    @comment.customer = current_customer
		if @comment.save
      	redirect_to @place, notice: "Comment was saved"
    else
      	redirect_to @place, notice: "Comment couldn't saved"
    end
	end

	def destroy
    @comment.destroy
    redirect_to @place, notice: "Comment was deleted"
  end

	private

	def set_comment
  	@comment = Comment.find(params[:id])
	end

	def authorize_customer!
  	redirect_to @place, notice: "Not authorized" unless @comment.customer_id == current_customer.id
	end

	def comment_params
  	params.require(:comment).permit(:body)
	end

	def set_place
  	@place = Place.find(params[:place_id])
	end


end
