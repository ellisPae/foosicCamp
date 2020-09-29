json.partial! "api/tracks/track", track: @track




# json.partial! 'api/tracks/track', track: @track
# if @track.pic.attached?
#   json.picUrl url_for(@track.photo)
# else
# #   json.picUrl image_url('ANOTHER PIC')
# end