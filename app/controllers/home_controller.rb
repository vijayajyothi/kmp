class HomeController < ApplicationController
  before_filter :authorize , :only => [:index] 
  layout "application"
  def index
  end
end
