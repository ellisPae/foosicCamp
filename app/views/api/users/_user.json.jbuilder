json.extract! user, :id, :email, :username, :artist_name, :location, :track_ids, :album_ids, :genre_ids

json.picUrl user.pic.attached? ? user_url(user.pic) : ""
