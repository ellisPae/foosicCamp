json.partial! "api/tracks/track", track: @track




# json.partial! 'api/tracks/song', track: @track
# if @track.photo.attached?
#   json.photoUrl url_for(@track.photo)
# else
# #   json.photoUrl image_url('avocado.png')
# end

# json.album do
#   json.albumName @track.album.title
#   json.photo url_for(@track.album.photo)
# end
# son.download rails_blob_path(@track.track, disposition: 'attachment')
# json.artist do
#   json.photo url_for(@track.artist.photo) 
# end