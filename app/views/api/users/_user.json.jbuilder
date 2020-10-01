json.extract! user, :id, :email, :username, :artist_name, :location, :track_ids, :album_ids, :genre_ids

json.albums do
    user.albums.each do |album|
        json.partial! 'api/albums/album', album: album
    end
end


# json.album_pic do
#     @user.albums.each do |album|
#         json.set! album.picUrl url_for(album.pic)
#     end
# end


json.picUrl user.pic.attached? ? url_for(user.pic) : ""

