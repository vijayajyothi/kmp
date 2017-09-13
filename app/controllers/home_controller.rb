class HomeController < ApplicationController
  before_filter :authorize , :only => [:index] 
  layout "application"
  def index
  # @search = Vmrequest.search do
  #     fulltext params[:search]
  #     paginate  :page => params[:page], :per_page=>6
  #   end
  #   @vmrequests = @search.results
    @vmrequests = Vmrequest.all
  end

   def search_list
    @search = Sunspot.search [Vmrequest, Project] do 
      fulltext params[:search]
    end
    @results = @search.results
  end 
end
