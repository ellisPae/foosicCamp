import { RECEIVE_ALL_GENRES, RECEIVE_GENRE } from '../actions/genre_actions';


const genresReducer = (oldState = {}, action) => {
    Object.freeze(oldState)
    let newState = Object.assign({}, oldState)

    switch (action.type) {
        case RECEIVE_ALL_GENRES:
            newState = action.genres
            return newState;
        case RECEIVE_GENRE:
            newState[action.genre.id] = action.genre
            return newState;
        default:
            return oldState;
    }
}

export default genresReducer;