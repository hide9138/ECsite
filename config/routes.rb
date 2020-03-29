Rails.application.routes.draw do

 get 'items/index'
 get 'end_users/mypages' => 'end_users#show', as:'end_user'

 devise_for :end_users, controllers: {
  sessions:      'end_users/sessions',
  passwords:     'end_users/passwords',
  registrations: 'end_users/registrations'
 }
  devise_for :admins, skip: :all
  devise_scope :admins do
	   get 'admins/sign_in' => 'admins/sessions#new'
     post 'admins/sign_in' => 'admins/sessions#create'
     delete 'admins/sign_out' => 'admins/sessions#destroy'
  end

  # devise_for :admins

    namespace :admin do
      resources :items
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
