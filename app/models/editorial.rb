class Editorial < ApplicationRecord
    belongs_to :artist

    validates :link_url, presence: true
    validates :img_url, presence: true

    mount_uploader :img_url, EditorialUploader
end
