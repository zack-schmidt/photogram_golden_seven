Rails.application.routes.draw do

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:the_id_number", { :controller => "photos", :action => "show"})


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
