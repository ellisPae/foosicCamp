json.set! album.id do
    json.extract! album, :id, :artist_id, :title, :price, :release_date, :description, :credits, :track_ids, 
    # :album, :pic
end








