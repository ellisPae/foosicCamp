class Genre < ApplicationRecord 

    validates :category, null: false

    has_many :genre_joins,
        foreign_key: :genre_id,
        class_name: :GenreJoin

    has_many :users,
        through: :genre_joins,
        source: :genreable,
        source_type: :User
    
    has_many :tracks,
        through: :genre_joins,
        source: :genreable,
        source_type: :Track

    has_many :albums,
        through: :genre_joins,
        source: :genreable,
        source_type: :Album

end