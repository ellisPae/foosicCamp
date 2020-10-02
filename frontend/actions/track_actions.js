import * as TrackApiUtil from '../util/track_api_util';
import { RECEIVE_USER } from './user_actions';


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

export const receiveTrack = payload => {

    const { track, artistAlbums, artist, genres } = payload;
    
    return {
        type: RECEIVE_TRACK,
        track, artistAlbums, artist, genres
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


// export const fetchTrackArtist = track => dispatch => {
//     return (
//         TrackApiUtil.fetchTrackArtist(track).then(
//             (user) => dispatch({TYPE: RECEIVE_USER, user}),
//             (errors) => dispatchTrackErrors(errors))
//     )
// }


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
            (payload) => dispatch(receiveTrack(payload)),
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



