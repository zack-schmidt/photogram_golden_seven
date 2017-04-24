class PhotosController < ApplicationController
  def show
    p = Photo.find(params[:the_id])

    @source = p.source
    @caption = p.caption
    
    render("photos/show.html.erb")
  end
end
