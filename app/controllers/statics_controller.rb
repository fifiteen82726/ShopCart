class StaticsController < ApplicationController

def index
	#show all item
	#use will_paginate
	@item = @paginate = Item.paginate(:page => params[:page])
end



end
