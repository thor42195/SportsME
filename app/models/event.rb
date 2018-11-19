class Event < ApplicationRecord
  belongs_to :organizer

  mount_uploader :image, ImgNameUploader
end
