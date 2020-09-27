export const fetchUserAlbums = user_id => {
    return $.ajax({
        url: `api/users/${user_id}/albums`
    })
}

export const fetchAllAlbums = () => {
    return $.ajax({
        url: `api/albums`
    })
}


export const fetchAlbum = albumId => {
    return $.ajax({
        url: `api/users/albums/${albumId}`
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

