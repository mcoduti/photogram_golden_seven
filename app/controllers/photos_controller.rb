class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def update_photo
    @photo_id = params["id"]
    @list_of_photos = Photo.all
    i = @list_of_photos.find(@photo_id)
    i.caption = params["the_caption"]
    i.save

    redirect_to("http://localhost:3000/photos/" + @photo_id.to_s)
  end

  def edit_form
    @photo_id = params["id"]
    @list_of_photos = Photo.all
    @caption = @list_of_photos.find(@photo_id).caption
    @source = @list_of_photos.find(@photo_id).source
    @photo = @list_of_photos.find(@photo_id).source
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
