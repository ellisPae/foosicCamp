json.partial! "api/users/user", user: @user

json.tracks @user.tracks, partial: 'api/tracks/track' as :track
json.albums @user.albums, partial: 'api/tracks/album' as :album


# have to render album and tracks index that belong to User











# if @user.photo.attached?
#   json.photoUrl url_for(@user.photo)
# else
#   json.photoUrl image_url('no-image-available.png')
# end






