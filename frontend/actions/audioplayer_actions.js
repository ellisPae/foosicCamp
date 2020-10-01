export const SET_TRACK = 'SET_TRACK';
export const PAUSE_TRACK = "PAUSE_TRACK";
export const PLAY_TRACK = "PLAY_TRACK";

export const setTrack = track => {
    return {
        type: SET_TRACK,
        track
    }
};

export const playTrack = () => {
    return {
        type: PLAY_TRACK
    }
};

export const pauseTrack = () => {
    return {
        type: PAUSE_TRACK
    }
};
