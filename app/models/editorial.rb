class Editorial < ApplicationRecord
    belongs_to :artist

    mount_uploader :img_url, EditorialUploader
end
