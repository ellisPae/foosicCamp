json.user do
    json.partial! "api/users/user", user: @user
end

json.tracks do
    @user.tracks.each do |track|
        json.set! track.id do
            json.partial! 'api/tracks/track', track: track
        end
    end
end

json.albums do
    @user.albums.each do |album|
        json.set! album.id do
            json.partial! 'api/albums/album', album: album
        end
    end
end

json.genres do
    @user.genres.each do |genre|
        json.set! genre.id do
            json.partial! 'api/genres/genre', genre: genre
        end
    end
end