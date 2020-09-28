import { RECEIVE_TRACK_ERRORS, RECEIVE_ALL_TRACKS, RECEIVE_TRACK, REMOVE_TRACK } from '../actions/track_actions';


let _defaultErrors = []

const tracksErrorsReducer = (errors = _defaultErrors, action) => {
    Object.freeze(errors)

    switch (action.type) {
        case RECEIVE_TRACK_ERRORS:
            return action.errors
        case RECEIVE_ALL_TRACKS:
            return [];
        case RECEIVE_TRACK:
            return [];
        case REMOVE_TRACK:
            return [];
        default:
            return errors
    }
}

export default tracksErrorsReducer;