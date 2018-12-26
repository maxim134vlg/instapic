class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)

    #respond_to do |format|
      if @photo.save
        redirect_to @photo, notice: 'Photo was successfully created.'
      else
        render :new 
      end
    #end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
      if @photo.update(photo_params)
        redirect_to @photo, notice: 'Photo was successfully updated.'
      else
        render :edit 
      end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
      redirect_to photos_url, notice: 'Photo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:description)
    end
end
