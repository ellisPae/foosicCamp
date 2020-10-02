import * as AlbumApiUtil from '../util/album_api_util';


export const RECEIVE_ALL_ALBUMS = 'RECEIVE_ALL_ALBUMS';
export const RECEIVE_ALBUM = 'RECEIVE_ALBUM';
export const REMOVE_ALBUM = 'REMOVE_ALBUM';
export const RECEIVE_ALBUM_ERRORS = 'RECEIVE_ALBUM_ERRORS'
export const CLEAR_ALBUMS = 'CLEAR_ALBUMS';

export const receiveAllAlbums = albums => {
    return {
        type: RECEIVE_ALL_ALBUMS,
        albums
    }
}


export const receiveAlbum = payload => {
    const { album, artist, tracks, genres } = payload;

    return {
        type: RECEIVE_ALBUM,
        album, artist, tracks, genres
    }
}

export const removeAlbum = albumId => {
    return {
        type: REMOVE_ALBUM,
        albumId
    }
}

export const receiveAlbumErrors = errors => {
    return {
        type: RECEIVE_ALBUM_ERRORS,
        errors
    }
}

export const clearAlbums = () => {
    return {
        type: CLEAR_ALBUMS
    }
}



export const fetchUserAlbums = userId => dispatch => {
    return (
        TrackApiUtil.fetchUserAlbums(userId).then(
            (albums) => dispatch(receiveAllAlbums(albums)),
            (errors) => dispatch(receiveAlbumErrors(errors))
        )
    )
}

export const fetchAllAlbums = () => dispatch => {
    return (
        AlbumApiUtil.fetchAllAlbums().then(
            (albums) => dispatch(receiveAllAlbums(albums)),
            (errors) => dispatch(receiveAlbumErrors(errors))
        )
    )
}


export const fetchAlbum = albumId => dispatch => {
    return (
        AlbumApiUtil.fetchAlbum(albumId).then(
            (payload) => dispatch(receiveAlbum(payload)),
            (errors) => dispatch(receiveAlbumErrors(errors))
        )
    )
}

export const createAlbum = album => dispatch => {
    return (
        AlbumApiUtil.createAlbum(album).then(
            (album) => dispatch(receiveAlbum(album)),
            (errors) => dispatch(receiveAlbumErrors(errors))
        )
    )
}

export const updateAlbum = album => dispatch => {
    return (
        AlbumApiUtil.updateAlbum(album).then(
            (album) => dispatch(receiveAlbum(album)),
            (errors) => dispatch(receiveAlbumErrors(errors))
        )
    )
}


export const deleteAlbum = albumId => dispatch => {
    return (
        AlbumApiUtil.deleteAlbum(albumId).then(
            () => dispatch(removeAlbum(albumId)),
            (errors) => dispatch(receiveAlbumErrors(errors))
        )
    )
}
