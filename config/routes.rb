LinuxEndpoint::Application.routes.draw do #  get "resumes/index"

 # get "resumes/new"

 #get "resumes/create"

#  get "resumes/destroy"
  resources :resumes, only: [:index, :new, :create, :destroy]

  resources :builds


  resources :projects


  resources :vmrequests


  get "home/index"
get "/search_list" => "home#search_list", :as => :search_list
get "/reports" => "vmrequests#reports", :as => :reports
get "/reports_search" => "vmrequests#reports_search", :as => :reports_search
get "export", to: "vmrequests#export", :as => :export
get "status_export", to: "projects#status_export", :as => :status_export

  get "sessions/new"

  resources :sessions

  match 'logout', to: 'sessions#destroy', as: 'logout'

  match 'login', to: 'sessions#new', as: 'login'

  match 'signup', to: 'users#new', as: 'signup'
   root :to => 'home#index'
end
