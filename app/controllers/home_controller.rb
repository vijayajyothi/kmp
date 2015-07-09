class HomeController < ApplicationController
  before_filter :authorize , :only => [:index] 
  layout "application"
  def index
  end

   def search_list
    @search = Sunspot.search [Vmrequest, Project] do 
      fulltext params[:search]
    end
    @results = @search.results
  end 
end
