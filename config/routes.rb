Rails.application.routes.draw do
  root 'vendings#show'
  get 'vendings/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
