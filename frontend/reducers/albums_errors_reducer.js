import { RECEIVE_ALBUM_ERRORS, RECEIVE_ALL_ALBUMS, RECEIVE_ALBUM, REMOVE_ALBUM } from './../actions/album_actions';


let _defaultErrors = []

const albumsErrorsReducer = (errors = _defaultErrors, action) => {
    Object.freeze(errors)

    switch (action.type) {
        case RECEIVE_ALBUM_ERRORS:
            return action.errors
        case RECEIVE_ALL_ALBUMS:
            return [];
        case RECEIVE_ALBUM:
            return [];
        case REMOVE_ALBUM:
            return [];
        default:
            return errors
    }
}

export default albumsErrorsReducer;