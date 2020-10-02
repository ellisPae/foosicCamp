export const fetchUserAlbums = userId => {
    return $.ajax({
        url: `api/users/${userId}/albums`
    })
}

export const fetchAllAlbums = () => {
    return $.ajax({
        url: `api/albums`
    })
}


export const fetchAlbum = albumId => {
    return $.ajax({
        url: `api/albums/${albumId}`
    })
}


export const createAlbum = album => {
    return $.ajax({
        method: 'POST',
        url: `api/users/${album.artist_id}/albums/`,
        data: { album }
    })
}


export const updateAlbum = album => {
    return $.ajax({
        method: 'PATCH',
        url: `api/albums/${album.id}`,
        data: { album }
    })
}

export const deleteAlbum = albumId => {
    return $.ajax({
        method: 'DELETE',
        url: `api/albums/${albumId}`,
    })
}

