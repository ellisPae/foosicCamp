import { connect } from 'react-redux';

import { fetchTrack } from '../../actions/track_actions';
import { setTrack, playTrack, pauseTrack }  from '../../actions/audioplayer_actions';
import TrackShow from './track_show';


const mSTP = (state, ownProps) => {
    let trackId = ownProps.match.params.trackId;
    const track = state.entities.tracks[trackId];
    const artist = track ? state.entities.users[track.artist_id] : "";
    const album = track ? state.entities.albums[track.album_id] : "";
    const artistAlbums = track ? state.entities.users[track.artist_id].albums : "";


    return {
        track: track,
        artist: artist,
        album: album,
        artistAlbums: Object.values(artistAlbums),
        isPlaying: state.ui.audioPlayer.isPlaying,
        trackId
    }
}


const mDTP = dispatch => {
    return {
        fetchTrack: trackId => dispatch(fetchTrack(trackId)),
        setTrack: track => dispatch(setTrack(track)),
        playTrack: () => dispatch(playTrack()),
        pauseTrack: () => dispatch(pauseTrack())
    }
}


export default connect(mSTP, mDTP)(TrackShow);