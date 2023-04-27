class Spot < ApplicationRecord
  mount_uploader :image, SpotImageUploader
end
