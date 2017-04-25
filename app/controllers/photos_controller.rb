class PhotosController < ApplicationController
  def index
    @all_photos = Photo.all
    render ("photos/index.html.erb")
  end

  def show
    # the params hash looks like this: {"the_id_number" => 1}

    p = Photo.find(params["the_id_number"])

    @the_caption = p.caption
    @the_image_url = p.source
    @created_at = p.created_at

    render("show.html.erb")
  end
end
