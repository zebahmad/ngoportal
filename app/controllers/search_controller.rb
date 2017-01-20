class SearchController < ApplicationController
	def search
	  if params[:q].nil?
	    @requirements = []
	  else
	    @requirements = Requirement.search params[:q]
	    @count = @requirements.count
  	  end
  	end
end
