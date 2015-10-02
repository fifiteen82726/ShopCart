class ItemsController < ApplicationController	
	def index
		@item = @paginate = Item.includes(:cate).paginate(:page => params[:page])
    	#@item = @paginate = Item.order('id DESC').includes(:cate).paginate(:page => params[:page])
	end

	def show
		@item = Item.find(params[:id])
	end

	def add_cart
		
		#hash
		session[:cart] ||={}
		item = Item.where(:id => params[:id]).first
		if item
			key = item.id.to_s
			session[:cart][key] ||=0
			session[:cart][key] +=1
		end

		render :json => {:counter => session[:cart].length}.to_json
		
	end

end
