Blinkapp::Application.routes.draw do
  get "users/new"
  root  'staticpages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/help',    to: 'staticpages#help',    via: 'get'
  match '/about',   to: 'staticpages#about',   via: 'get'
  match '/contact', to: 'staticpages#contact', via: 'get'
end