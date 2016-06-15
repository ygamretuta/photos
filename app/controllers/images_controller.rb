class ImagesController < ApplicationController
  before_action :set_image, only:[:show, :edit, :update, :destroy, :serve]

  before_action :authenticate_user!, except: [:index, :show]

  layout proc {|controller| controller.request.xhr? ? false: 'application' }

  respond_to :html, :js

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      logger.info 'Image creation successful.'
    else
      logger.info 'Image creation failed.'
    end

    respond_with @image
  end

  def edit
  end

  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @image, notice: 'Image successfully updated.'}
      else
        format.html { render :edit }
      end
    end
  end

  def show
    respond_to do |format|
      format.html
      format.js
    end
  end

  def serve
    image = open(@image.path_url(:hd)).read
    send_data image, type: 'image/webp', disposition: 'inline'
  end

  def destroy
    @image.destroy
    respond_to do |format|
      format.html{ redirect_to images_url, notice: 'Image successfully destroyed.'}
    end
  end

  private
    def set_image
      @image = Image.find(params[:id])
    end

    def image_params
      params.require(:image).permit(:path, :description, :highlight, :path_cache, :title, tag_list: [])
    end
end
