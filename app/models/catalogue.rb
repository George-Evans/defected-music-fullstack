class Catalogue < ApplicationRecord
    has_many :cat_editorial
    accepts_nested_attributes_for :cat_editorial
    acts_as_list

    validates :position, presence: true
    validates :artist, presence: true
    validates :title, presence: true
    validates :img_url, presence: true

    mount_uploader :img_url, ArtistUploader

    def previous_catalogue
        Catalogue.where("position < ?", position).order(position: :desc).limit(1).first
    end

    def next_catalogue
        Catalogue.where("position > ?", position).order(position: :asc).limit(1).first
    end
end
