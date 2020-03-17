class Songwriter < ApplicationRecord
    has_many :songwriter_editorial
    accepts_nested_attributes_for :songwriter_editorial
    acts_as_list

    validates :position, presence: true
    validates :name, presence: true
    validates :bio, presence: true
    validates :img_url, presence: true

    mount_uploader :img_url, SongwriterUploader

    def previous_songwriter
        Songwriter.where("position < ?", position).order(position: :desc).limit(1).first
    end

    def next_songwriter
        Songwriter.where("position > ?", position).order(position: :asc).limit(1).first
    end
end
