import * as AlbumApiUtil from '../util/album_api_util;


export const RECEIVE_ALL_ALBUMS = 'RECEIVE_ALL_ALBUMS';
export const RECEIVE_ALBUM = 'RECEIVE_ALBUM';
export const REMOVE_ALBUM = 'REMOVE_ALBUM';


export const receiveAllAlbums = albums => {
    return {
        type: RECEIVE_ALL_ALBUMS,
        albums
    }
}


export const receiveAlbum = album => {
    return {
        type: RECEIVE_ALBUM,
        album
    }
}

export const removeAlbum = albumId => {
    return {
        type: REMOVE_ALBUM,
        albumId
    }
}




export const fetchUserAlbums = user_id => dispatch => {
    return (
        TrackApiUtil.fetchUserAlbums(user_id).then(albums => {
            return dispatch(receiveAllAlbums(albums))
        })
    )
}

export const fetchAllAlbums = () => dispatch => {
    return (
        TrackApiUtil.fetchAllAlbums().then(albums => {
            return dispatch(receiveAllAlbums(albums))
        })
    )
}


export const fetchAlbum = albumId => dispatch => {
    return (
        AlbumApiUtil.fetchAlbum(albumId).then(album => {
            return dispatch(receiveAlbum(album))
        })
    )
}

export const createAlbum = album => dispatch => {
    return (
        AlbumApiUtil.createTrack(album).then(album => {
            return dispatch(receiveAlbum(album))
        })
    )
}

export const updateAlbum = album => dispatch => {
    return (
        AlbumApiUtil.updateAlbum(album).then(album => {
            return dispatch(receiveAlbum(album))
        })
    )
}


export const deleteAlbum = albumId => dispatch => {
    return (
        AlbumApiUtil.deleteAlbum(albumId).then(() => {
            return dispatch(removeAlbum(albumId))
        })
    )
}
