class Album < ApplicationRecord


    validates :artist_id, :title, :price, presence: :true

    belongs_to :artist,
        class_name: :User,
        foreign_key: :artist_id

    has_many :tracks,
        class_name: :Track,
        foreign_key: :album_id

    has_many :genre_joins, :as => :genreable
    
    has_many :genres,
        through: :genre_joins,
        source: :genre

    # has_one_attached :album
    # has_many_attached: tracks
    has_one_attached :pic



end