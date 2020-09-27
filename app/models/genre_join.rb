class GenreJoin < ApplicationRecord 
    
    validates :genre_id, presence: true

    belongs_to :genre

    belongs_to :genreable, :polymorphic => true





end