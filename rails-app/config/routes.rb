Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match(
    '/stuff',
    to: 'stuff#index',
    via: :get,
    format: :html
  )
end
