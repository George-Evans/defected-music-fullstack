class Artist < ApplicationRecord
    has_many :editorial
    accepts_nested_attributes_for :editorial
    acts_as_list

    mount_uploader :img_url, ArtistUploader
end
