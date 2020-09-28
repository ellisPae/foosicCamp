json.partial! 'api/albums/album', album: @album

# if @album.photo.attached?
#     json.photoUrl url_for(@album.photo)
# else
#     json.photoUrl image_url('no-image-found.png')
# end
