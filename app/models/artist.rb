class Artist < ApplicationRecord
    has_many :editorial
    acts_as_list

    mount_uploader :img_url, ArtistUploader
end
