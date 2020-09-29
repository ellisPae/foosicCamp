class Track < ApplicationRecord

    validates :artist_id, :title, :price, presence: true

    belongs_to :artist,
        class_name: :User,
        foreign_key: :artist_id

    belongs_to :album, optional: true
    

    has_many :genre_joins, :as => :genreable
    
    
    has_many :genres,
        through: :genre_joins,
        source: :genre

        

    has_one_attached :track
    has_one_attached :photo




end