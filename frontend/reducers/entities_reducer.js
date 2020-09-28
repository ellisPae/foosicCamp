import { combineReducers } from 'redux';

import usersReducer from './users_reducer';
import albumsReducer from './albums_reducer';
import tracksReducer from './tracks_reducer';
import genresReducer from './genres_reducer';

const entitiesReducer = combineReducers(
    {
        users: usersReducer,
        albums: albumsReducer,
        tracks: tracksReducer,
        genres: genresReducer
    }
);

export default entitiesReducer;

