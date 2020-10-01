json.extract! track, :id, :artist_id, :title, :price, :album_id, :release_date, :description, :credits

json.trackUrl track.track.attached? ? url_for(track.track) : ""

# json.set! track.id do
#     json.extract! track, :id, :artist_id, :title, :price, :album_id, :release_date, :description, :credits
#     json.trackUrl track.track.attached? ? url_for(track.track) : ""
# end







