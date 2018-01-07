class ReviewsController < ApplicationController
	def create
		  item = Item.find(params[:item_id])
		  comment.item_id = item.id
		  comment.save
		  redirect_to item_path(item)
	end
	private
	def post_comment_params
		params.require(:review).permit(:user_id, :item_id, :comment)
	end
end

