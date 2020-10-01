# json.set! album.id do
    json.extract! album, :id, :artist_id, :title, :price, :release_date, :description, :credits, :track_ids
    json.picUrl album.pic.attached? ? url_for(album.pic) : ""
# end








