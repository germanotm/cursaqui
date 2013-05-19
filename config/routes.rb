Cursaqui::Application.routes.draw do
  
  resources :students


  root :to => 'home#index'
  
end
