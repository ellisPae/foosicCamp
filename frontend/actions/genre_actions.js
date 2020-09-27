import * as GenreApiUtil from '../util/genre_api_util';

export const RECEIVE_ALL_GENRES = 'RECEIVE_ALL_GENRES';
export const RECEIVE_GENRE = 'RECEIVE_GENRE';


export const receiveAllGenres = genres => {
    return {
        type: RECEIVE_ALL_GENRES,
        genres
    }
}

export const receiveGenre = genre => {
    return {
        type: RECEIVE_GENRE,
        genre
    }
}


export const fetchGenres = () => dispatch => {
    return(
        GenreApiUtil.fetchGenres().then(genres => {
            return dispatch(receiveAllGenres(genres))
        })
    )
}

export const fetchGenre = genreId => dispatch => {
    return (
        GenreApiUtil.fetchGenre(genreId).then(genre => {
            return dispatch(receiveGenre(genre))
        })
    )
}