class Spot < ApplicationRecord
  mount_uploader :image, SpotImageUploader
  geocoded_by :address
end
