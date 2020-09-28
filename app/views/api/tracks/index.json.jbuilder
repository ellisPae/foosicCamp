
json.array! @tracks do |track|
  json.partial! 'api/tracks/track', track: track
end



# json.array! @tracks do |track|
#   if @album_id
#     json.partial! 'api/tracks/track', track: track
#   else
#     if track.photo.attached?
#       json.partial! 'api/tracks/track', track: track
#       json.photoUrl url_for(track.photo)
#     end
#   end
# end

