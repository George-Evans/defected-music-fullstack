class Catalogue < ApplicationRecord
    has_many :cat_editorial
    accepts_nested_attributes_for :cat_editorial
    acts_as_list

    validates :position, presence: true
    validates :artist, presence: true
    validates :title, presence: true
    validates :img_url, presence: true

    mount_uploader :img_url, ArtistUploader
end
