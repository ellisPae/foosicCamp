
export const fetchGenres = () => {
    return $.ajax({
        url: 'api/genres'
    })
}

export const fetchGenre = genreId => {
    return $.ajax({
        url: `api/genres/${genreId}`
    })
}