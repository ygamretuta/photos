# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # use Cloudinary for storage
  include Cloudinary::CarrierWave

  process :convert => 'webp'
  process :tags => ['post_picture']

  version :hd do
    eager
    # process :resize_to_fill => [1280, 720, :face]
    process :resize_to_fit => [1280, 720]
  end

  version :standard do
    eager
    process resize_to_fit: [1024, 576]
  end

  version :huge do
    eager
    process resize_to_fit: [1600, 900]
  end
end