json.track do 
    json.set! @track.id do
        json.partial! "api/tracks/track", track: @track
    end
end


json.artist do 
    json.set! @track.artist_id do
        json.partial! "api/users/user", user: @track.artist
    end
end

# json.albums do
#     @track.artist.albums.each do |album|
#         json.picUrl url_for(album.pic)
#     end
# end



json.album do 
    # json.set! @track.album_id do
        json.partial! "api/albums/album", album: @track.album
    # end
end


# json.picUrl track.album ? url_for(track.album.pic) : ""







