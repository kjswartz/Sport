# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::MiniMagick


  # Choose what kind of storage to use for this uploader:
  storage :fog
  uploader = AvatarUploader.new

  # Process files as they are uploaded:
  process :resize_to_fit => [250, 200]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fit => [75, 75]
  end

  #default storage name
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # default image
  def default_url
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "male-silhouette.png"].compact.join('_'))
  end

end
