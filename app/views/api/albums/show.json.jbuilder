# json.partial! "api/albums/album", album: @album

json.album do
    json.extract! @album, :id, :artist_id, :title, :price, :release_date, :description, :credits
    json.tracks do
        @album.tracks.each do |track|
            json.set! track.id do
                json.trackUrl url_for(track.track)
            end
        end
    end
end


json.artist do
    # json.partial! "api/users/user", user: @album.artist
    json.extract! @album.artist, :id, :artist_name, :location, :genres
    json.picUrl @album.artist.pic.attached? ? url_for(@album.artist.pic) : ""
    json.albums do
        @album.artist.albums.each do |album|
            json.set! album.id do
                json.title album.title
            end
        end
    end
end

# json.trackUrls do   
#     @album.tracks.each do |track|
#         json.trackUrl url_for(track.track)
#     end
# end


