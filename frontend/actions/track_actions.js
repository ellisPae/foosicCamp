import * as TrackApiUtil from '../util/track_api_util';


export const RECEIVE_ALL_TRACKS = 'RECEIVE_ALL_TRACKS';
export const RECEIVE_TRACK = 'RECEIVE_TRACK';
export const REMOVE_TRACK = 'REMOVE_TRACK';
export const RECEIVE_TRACK_ERRORS = 'RECEIVE_TRACK_ERRORS';


export const receiveAllTracks = tracks => {
    return {
        type: RECEIVE_ALL_TRACKS,
        tracks
    };
};

export const receiveTrack = track => {
    return {
        type: RECEIVE_TRACK,
        track
    };
};

export const removeTrack = trackId => {
    return {
        type: REMOVE_TRACK,
        trackId
    };
};

export const receiveTrackErrors = errors => {
    return {
        type: RECEIVE_TRACK_ERRORS,
        errors
    };
};




export const fetchUserTracks = userId => dispatch => {
    return (
        TrackApiUtil.fetchUserTracks(userId).then(
            (tracks) => dispatch(receiveAllTracks(tracks)),
            (errors) => dispatch(receiveTrackErrors(errors))
        )
    );
};

export const fetchAllTracks = () => dispatch => {
    return (
        TrackApiUtil.fetchAllTracks().then(
            (tracks) => dispatch(receiveAllTracks(tracks)),
            (errors) => dispatch(receiveTrackErrors(errors))
        )
    );
};


export const fetchTrack = trackId => dispatch => {
    return (
        TrackApiUtil.fetchTrack(trackId).then(
            (track) => dispatch(receiveTrack(track)),
            (errors) => dispatch(receiveTrackErrors(errors))
        )
    );
};

export const createTrack = track => dispatch => {
    return (
        TrackApiUtil.createTrack(track).then(
            (track) => dispatch(receiveTrack(track)),
            (errors) => dispatch(receiveTrackErrors(errors))
        )
    );
};

export const updateTrack = track => dispatch => {
    return (
        TrackApiUtil.updateTrack(track).then(
            (track) => dispatch(receiveTrack(track)),
            (errors) => dispatch(receiveTrackErrors(errors))
        )
    );
};


export const deleteTrack = trackId => dispatch => {
    return (
        TrackApiUtil.deleteTrack(trackId).then(
            () => dispatch(removeTrack(trackId)),
            (errors) => dispatch(receiveTrackErrors(errors))
        )
    );
};



