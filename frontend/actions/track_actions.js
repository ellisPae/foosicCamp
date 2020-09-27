import * as TrackApiUtil from '../util/track_api_util';


export const RECEIVE_ALL_TRACKS = 'RECEIVE_ALL_TRACKS';
export const RECEIVE_TRACK = 'RECEIVE_TRACK';
export const REMOVE_TRACK = 'REMOVE_TRACK';


export const receiveAllTracks = tracks => {
    return {
        type: RECEIVE_ALL_TRACKS,
        tracks
    }
}


export const receiveTrack = track => {
    return {
        type: RECEIVE_TRACK,
        track
    }
}

export const removeTrack = trackId => {
    return {
        type: REMOVE_TRACK,
        trackId
    }
}




export const fetchUserTracks = user_id => dispatch => {
    return (
        TrackApiUtil.fetchUserTracks(user_id).then(tracks => {
            return dispatch(receiveAllTracks(tracks))
        })
    )
}

export const fetchAllTracks = () => dispatch => {
    return (
        TrackApiUtil.fetchAllTracks().then(tracks => {
            return dispatch(receiveAllTracks(tracks))
        })
    )
}


export const fetchTrack = trackId => dispatch => {
    return (
        TrackApiUtil.fetchTrack(trackId).then(track => {
            return dispatch(receiveTrack(track))
        })
    )
}

export const createTrack = track => dispatch => {
    return (
        TrackApiUtil.createTrack(track).then(track => {
            return dispatch(receiveTrack(track))
        })
    )
}

export const updateTrack = track => dispatch => {
    return (
        TrackApiUtil.updateTrack(track).then(track => {
            return dispatch(receiveTrack(track))
        })
    )
}


export const deleteTrack = trackId => dispatch => {
    return (
        TrackApiUtil.deleteTrack(trackId).then(() => {
            return dispatch(removeTrack(trackId))
        })
    )
}



