import { combineReducers } from 'redux';

import sessionErrorsReducer from './session_errors_reducer';
import usersErrorsReducer from './users_errors_reducer';
import albumsErrorReducer from './albums_errors_reducer';
import tracksErrorsReducer from './tracks_errors_reducer';

const errorsReducer = combineReducers({
    session: sessionErrorsReducer,
    users: usersErrorsReducer,
    albums: albumsErrorReducer,
    tracks: tracksErrorsReducer
});

export default errorsReducer
