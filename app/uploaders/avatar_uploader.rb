class AvatarUploader < CarrierWave::Uploader::Base
  storage :fog

  include CarrierWave::MiniMagick
  def store_dir
    if model.present?
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    else
      'uploads/content_image/'
    end
  end

  def extension_allowlist
    %w[jpg jpeg png]
  end
end
