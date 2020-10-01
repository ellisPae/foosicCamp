json.extract! track, :id, :artist_id, :title, :price, :album_id, :release_date, :description, :credits

json.trackUrl track.track.attached? ? url_for(track.track) : ""







