import { RECEIVE_ALL_TRACKS, RECEIVE_TRACK, REMOVE_TRACK } from '../actions/track_actions';


const tracksReducer = (oldState = {}, action ) => {
    Object.freeze(oldState);
    let newState = Object.assign({}, oldState);

    switch (action.type) {
        case RECEIVE_ALL_TRACKS:
            newState = action.tracks
            return newState
        case RECEIVE_TRACK:
            newState[action.track.id] = action.track
            return newState
        case REMOVE_TRACK:
            delete newState[action.trackId]
            return newState;
        default:
            return oldState;
    }
}



export default tracksReducer;
