json.array! @albums do |album|
  json.partial! 'api/albums/album', album: album
end



# json.array! @albums do |album|
#     if @user_id
#         json.partial! 'api/albums/album', album: album
#         if album.photo.attached?
#             json.photoUrl url_for(album.photo)
#         else
#             json.photoUrl image_url('no-image-found.png')
#         end
#     else
#         if album.photo.attached?
#             json.partial! 'api/albums/album', album: album
#             json.photoUrl url_for(album.photo)
#         end
#     end
# end