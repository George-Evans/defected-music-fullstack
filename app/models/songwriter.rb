class Songwriter < ApplicationRecord
    has_many :songwriter_editorial
    accepts_nested_attributes_for :songwriter_editorial
    acts_as_list

    validates :position, presence: true
    validates :name, presence: true
    validates :bio, presence: true
    validates :img_url, presence: true

    mount_uploader :img_url, SongwriterUploader
end
