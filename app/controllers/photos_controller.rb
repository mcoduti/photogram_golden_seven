class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo_id = params["id"]
    @list_of_photos = Photo.all
    @caption = @list_of_photos.find(@photo_id).caption
    @photo = @list_of_photos.find(@photo_id).source
  end

  def new_form
  end

  def destroy

    @photo_id = params["id"]
    @list_of_photos = Photo.all
    @list_of_photos.find(@photo_id).destroy
    redirect_to("http://localhost:3000/photos")

  end

  def create_photo
    # raise params.inspect
    @input_caption = params["the_caption"]
    @input_source = params["the_source"]

    i = Photo.new
    i.caption = @input_caption
    i.source = @input_source
    i.save
  end
end
