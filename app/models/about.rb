class About < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
    validates :img_url, presence: true

    mount_uploader :img_url, AboutUploader
end
