class Track < ApplicationRecord

    validates :artist_id, :title, :price, presence: true

    belongs_to :artist,
        class_name: :User,
        foreign_key: :artist_id

    belongs_to :album,
        class_name: :Album,
        foreign_key: :album_id
    

    has_many :genre_joins, :as => :genreable
    
    
    has_many :genres,
        through: :genre_joins,
        source: :genre

    # has_one_attached :track
    # has_one_attached :photo




end