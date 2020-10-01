json.track do 
    json.set! @track.id do
        json.partial! "api/tracks/track", track: @track
        json.genres @track.genres
    end
end


json.artist do 
    json.set! @track.artist.id do 
        json.partial! "api/users/user", user: @track.artist
    end
end

json.artistAlbums do
    @track.artist.albums.each do |album|
        json.set! album.id do
            json.partial! 'api/albums/album', album: album
        end
    end
end





json.album do 
    json.partial! "api/albums/album", album: @track.album
end


# json.picUrl track.album ? url_for(track.album.pic) : ""







