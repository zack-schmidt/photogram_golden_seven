class PhotosController < ApplicationController
  def new_form
    render("photos/new_form.html.erb")
  end

  def create_row
    p = Photo.new

    p.source = params[:the_source]
    p.caption = params[:the_caption]

    p.save

    redirect_to("/all_photos")
  end

  def index
    @list_of_photos = Photo.order(:created_at => :desc)

    render("photos/index.html.erb")
  end

  def show
    @photo = Photo.find(params[:the_id])

    render("photos/show.html.erb")
  end

  def destroy_row
    p = Photo.find(params[:the_id])

    p.destroy
    
    redirect_to("/all_photos")
  end
end
