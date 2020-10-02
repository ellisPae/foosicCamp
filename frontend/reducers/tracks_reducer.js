import { RECEIVE_ALL_TRACKS, RECEIVE_TRACK, REMOVE_TRACK } from '../actions/track_actions';
import { RECEIVE_ALBUM } from '../actions/album_actions';
import { RECEIVE_USER } from '../actions/user_actions';


const tracksReducer = (oldState = {}, action ) => {

    Object.freeze(oldState);
    let newState = Object.assign({}, oldState);

    switch (action.type) {
        case RECEIVE_ALL_TRACKS:
            newState = action.tracks
            return newState
        case RECEIVE_TRACK:
           return Object.assign({}, oldState, action.track)
        case REMOVE_TRACK:
            delete newState[action.trackId]
            return newState;
        case RECEIVE_USER:
            return action.tracks;
        case RECEIVE_ALBUM:
            return action.album.tracks;
        default:
            return oldState;
    }
}



export default tracksReducer;
