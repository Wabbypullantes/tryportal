Rails.application.routes.draw do

  root 'researches#index'
  devise_for :users


  get '/home/index' => 'homes#index'


  #routes for research
  get '/research/index' => 'researches#index'
  
  get '/research/new' => 'researches#new'
  post '/research/new' => 'researches#create'
  get '/research/edit' => 'research#edit'
  get '/research/:id' => 'researches#show'
  get '/research/:id/edit' => 'researches#edit'
  post '/research/:id/edit' => 'researches#update'
  get '/research/destory' => 'researches#destroy'
  get '/research/:id/destroy' => 'researches#destroy'

  #routes for officers
  get 'officer/index' => 'officers#index'
  get 'officer/new' => 'officers#new'
  post 'officer/new' => 'officers#create'
  get 'officer/edit' => 'officers#edit'
  get 'officer/:id' => 'officers#show'
  get 'officer/:id/edit' => 'officers#edit'
  post 'officer/:id/edit' => 'officers#update'

  #routes for professors
  get 'professor/index' => 'professors#index'
  get 'professor/new' => 'professors#new'
  post 'professor/new' => 'professors#create'
  get 'professor/edit' => 'professors#edit'
  get 'professor/:id' => 'professors#show'
  get 'professor/:id/edit' => 'professors#edit'
  post 'professor/:id/edit' => 'professors#update'
  get 'professor/destroy' => 'professors#destroy'
  get 'professor/:id/destroy' => 'professors#destroy'

  #routes for about
  get 'about/index' => 'abouts#index'
  get 'about/new' => 'abouts#new'
  post 'about/new' => 'abouts#create'
  get 'about/edit' => 'abouts#edit'
  get 'about/:id' => 'abouts#show'
  get 'about/:id/edit' => 'abouts#edit'
  post 'about/:id/edit' => 'abouts#update'

  #routes for event
  get 'event/search' => 'events#search'
  get 'event/eventlist' => 'events#eventlist'
  get 'event/index' => 'events#index'
  get 'event/new' => 'events#new'
  post 'event/new' => 'events#create'
  get 'event/edit' => 'events#edit'
  get 'event/:id' => 'events#show'
  get 'event/:id/edit' => 'events#edit'
  post 'event/:id/edit' => 'events#update'
  get 'event/destroy' => 'events#destroy'
  get 'event/:id/destroy' => 'events#destroy'


    #routes for subjects
    get 'subject/index' => 'subjects#index'
    get 'subject/new' => 'subjects#new'
    post 'subject/new' => 'subjects#create'
    get 'subject/edit' => 'subjects#edit'
    get 'subject/:id' => 'subjects#show'
    get 'subject/:id/edit' => 'subjects#edit'
    post 'subject/:id/edit' => 'subjects#update'
    get 'subject/destroy' => 'subjects#destroy'
    get 'subject/:id/destroy' => 'subjects#destroy'


end
