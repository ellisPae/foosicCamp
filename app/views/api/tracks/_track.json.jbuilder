json.set! track.id do 
    json.extract! track, :id, :artist_id, :title, :price, :album_id, :release_date, :description, :credits, 
    # :pic, :track
end






