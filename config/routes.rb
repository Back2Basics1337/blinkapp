Blinkapp::Application.routes.draw do

  resources :users
  root  'staticpages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/news',    to: 'staticpages#news',    via: 'get'
  match '/about',   to: 'staticpages#about',   via: 'get'
  match '/contact', to: 'staticpages#contact', via: 'get'
end