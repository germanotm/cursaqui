Cursaqui::Application.routes.draw do
  
  resources :courses
  resources :students

  root :to => 'home#index'
  
end
