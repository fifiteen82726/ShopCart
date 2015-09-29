class ItemsController < ApplicationController	
	def index
		@item = Item.paginate(:page => params[:page])
	end

	def show
		@item = Item.find(params[:id])
	end

end
