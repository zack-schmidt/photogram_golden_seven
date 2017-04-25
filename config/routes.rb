Rails.application.routes.draw do
  # CREATE
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  get("/create_photo", { :controller => "photos", :action => "create_row" })

  # READ
  get("/all_photos", { :controller => "photos", :action => "index" })
  get("/photo_details/:the_id", { :controller => "photos", :action => "show" })

  # UPDATE
  get("/edit_photo/:the_id", { :controller => "photos", :action => "edit_form" })

  # DELETE
  get("/delete_photo/:the_id", { :controller => "photos", :action => "destroy_row" })

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
