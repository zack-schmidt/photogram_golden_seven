class PhotosController < ApplicationController
  def show
    render("photos/show.html.erb")
  end
end
