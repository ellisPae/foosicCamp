json.set! album.id do
    json.extract! album, :id, :artist_id, :title, :price, :release_date, :description, :credits, :track_ids
end












# json.artist do
#     json.artistName album.artist.username
#     if album.artist.photo.attached?
#         json.photo url_for(album.artist.photo) 
#     else
#         json.photo image_url('no-image-available.png')
#     end
# end