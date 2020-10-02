import { RECEIVE_ALL_ALBUMS, RECEIVE_ALBUM, REMOVE_ALBUM, CLEAR_ALBUMS } from '../actions/album_actions';
import { RECEIVE_TRACK } from '../actions/track_actions';
import { RECEIVE_USER } from '../actions/user_actions';


const albumsReducer = (oldState = {}, action) => {
    Object.freeze(oldState);
    let newState = Object.assign({}, oldState);

    switch (action.type) {
        
        case RECEIVE_ALL_ALBUMS:
            newState = action.albums
            return newState
        case RECEIVE_ALBUM:
            newState[action.album.id] = action.album
            return newState
        case REMOVE_ALBUM:
            delete newState[action.albumId]
            return newState;
        case RECEIVE_USER:
            return action.albums;
        case RECEIVE_TRACK:
            return action.artistAlbums;
        case CLEAR_ALBUMS:
            return {};
        default:
            return oldState;
    }
}



export default albumsReducer;
