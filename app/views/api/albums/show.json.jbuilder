# json.partial! "api/albums/album", album: @album

json.album do
    json.extract! @album, :id, :artist_id, :title, :price, :release_date, :description, :credits
    json.picUrl @album.pic.attached? ? url_for(@album.pic) : ""
    json.tracks do
        @album.tracks.each do |track|
            json.set! track.id do
                json.id track.id
                json.trackUrl url_for(track.track)
                json.title track.title
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
                json.id album.id
                json.title album.title
                json.picUrl url_for(album.pic)
            end
        end
    end
end

# json.trackUrls do   
#     @album.tracks.each do |track|
#         json.trackUrl url_for(track.track)
#     end
# end


