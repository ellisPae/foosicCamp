json.user do
    json.partial! "api/users/user", user: @user
end

json.tracks do
    @user.tracks.each do |track|
        json.partial! 'api/tracks/track', track: track
    end
end

json.albums do
    @user.albums.each do |album|
        json.partial! 'api/albums/album', album: album
    end
end

json.genres do
    @user.genres.each do |genre|
        json.partial! 'api/genres/genre', genre: genre
    end
end