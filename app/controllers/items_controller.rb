class ItemsController < ApplicationController
	def new
		@item = Item.new
	end
	def create
		item = Item.new(item_params)
		item.save
		redirect_to items_path
	end
	def index
		@items = Item.all
	end

	def show
		@item = Item.find(params[:id])
		@comment = Review.new
	end

	private
	def item_params
		params.require(:item).permit(:item_name)
	end
end
