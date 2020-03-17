class Artist < ApplicationRecord
    has_many :editorial
    accepts_nested_attributes_for :editorial
    acts_as_list

    validates :position, presence: true
    validates :name, presence: true
    validates :bio, presence: true
    validates :img_url, presence: true

    mount_uploader :img_url, ArtistUploader

    def previous_artist
        Artist.where("position < ?", position).order(position: :desc).limit(1).first
    end

    def next_artist
        Artist.where("position > ?", position).order(position: :asc).limit(1).first
    end
end
