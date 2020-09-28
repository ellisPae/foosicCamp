
export const fetchUserTracks = userId => {
    return $.ajax({
        url: `api/users/${userId}/tracks`
    })
}

export const fetchAllTracks = () => {
    return $.ajax({
        url: `api/tracks`
    })
}


export const fetchTrack = trackId => {
    return $.ajax({
        url: `api/tracks/${trackId}`
    })
}


export const createTrack = track => {
    return $.ajax({
        method: 'POST',
        url: `api/users/${track.artist_id}/tracks/`,
        data: { track }
    })
}


export const updateTrack = track => {
    return $.ajax({
        method: 'PATCH',
        url: `api/tracks/${track.id}`,
        data: { track }
    })
}

export const deleteTrack = trackId => {
    return $.ajax({
        method: 'DELETE',
        url: `api/tracks/${trackId}`,
    })
}

