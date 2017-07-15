Rails.application.routes.draw do

  resources :tasks
  resources :entries
  resources :plans do
    resources :tasks
    resources :entries
  end
  resources :students do
    resources :plans do # TODO: restricted as necessary
      resources :entries #TODO: THIS IS GROSS STOP IT.
    end
  end
  resources :subjects do
    resources :sub_stu_links, only: [:new, :create, :destroy]
    resources :plans, only: [:new, :create, :destroy] # TODO: Does this need to exist?
  end
  resources :teachers do
    resources :subjects, only: [:new, :create, :destroy] # TODO: Does this need to exist? implement "add/remove subject" on teachers index/show
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
