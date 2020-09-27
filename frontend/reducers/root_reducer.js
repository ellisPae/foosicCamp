import { combineReducers } from 'redux';

import entities from './entities_reducer';
import session from './session_reducer';
import errors from './errors_reducer';
import modal from './modal_reducer';
import tracks from './tracks_reducer';
import albums from './albums_reducer';


const rootReducer = combineReducers(
    {   
        entities,
        session,
        errors,
        modal,
        tracks,
        albums
    }
)

export default rootReducer;