Rails.application.routes.draw do

  get("/photo_details/:the_id", { :controller => "photos", :action => "show" })

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
