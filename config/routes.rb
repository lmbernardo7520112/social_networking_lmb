Rails.application.routes.draw do
  devise_for :users
  devise_for :admins, skip: [:registrations], controllers: {sessions: 'admins/sessions'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    #admin/posts
    #root to: "admin/admin/home#index" (dá errado)
    #root to: "admin/home#index" (dá errado mas é o que o prof escreve na aula)
    root to: "home#index" #só tá dando certo c esse)
    resources :admins
  end

  root to: "user/timeline#index"

  namespace :user do

  end
end
