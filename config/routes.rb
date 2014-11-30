Rails.application.routes.draw do
  root 'people#new'
  get 'adm0n' => 'people#clear', constraints: {ip: /127.0.0.1/}
  resources :people, :except => [:edit, :update, :destroy]
end
