class SearchController < ApplicationController
	def search_bustype 
   		@get_bus = Bookticket.where("bustype LIKE ? ","#{params[:bustype]}%" )
   		puts @get_bus
	end
end
