class Artist < ApplicationRecord
    has_many :editorial
    accepts_nested_attributes_for :editorial
    acts_as_list

    validates :position, presence: true
    validates :name, presence: true
    validates :bio, presence: true
    validates :img_url, presence: true

    mount_uploader :img_url, ArtistUploader
end
