class PhotosController < ApplicationController
  def new_form
    render("photos/new_form.html.erb")
  end
  
  def index
    @list_of_photos = Photo.all

    render("photos/index.html.erb")
  end

  def show
    p = Photo.find(params[:the_id])

    @source = p.source
    @caption = p.caption

    render("photos/show.html.erb")
  end
end
