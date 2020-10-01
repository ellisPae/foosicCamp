import { SET_TRACK, PLAY_TRACK, PAUSE_TRACK } from '../actions/audioplayer_actions';

let oldState = { track: null, isPlaying: false };

const audioPlayerReducer = (state = oldState, action) => {
    Object.freeze(state);
    let newState = Object.assign({}, state)

    switch (action.type) {
        case SET_TRACK:
            newState.track = action.track
            return newState;
        case PLAY_TRACK:
            newState.isPlaying = true
            return newState
        case PAUSE_TRACK:
            newState.isPlaying = false
            return newState;
        default:
            return state;
    }
}

export default audioPlayerReducer;