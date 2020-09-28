json.set! track.id do 
    json.extract! track, :id, :artist_id, :title, :price, :album_id, :release_date, :description, :credits
end








# json.trackUrl url_for(track.track)
# json.artist do
#   json.artistName track.artist.username
# end