Rails.application.routes.draw do
  root 'people#new'
  get 'adm0n' => 'people#clear'
  resources :people, :except => [:edit, :update, :destroy]
end
