class PhotosController < ApplicationController
  def index
    render("photos/index.html.erb")
  end
  
  def show
    p = Photo.find(params[:the_id])

    @source = p.source
    @caption = p.caption

    render("photos/show.html.erb")
  end
end
