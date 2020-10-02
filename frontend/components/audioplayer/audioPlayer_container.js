import { connect } from 'react-redux';
import { fetchTrack } from '../../actions/track_actions';
import { setTrack, playTrack, pauseTrack } from '../../actions/audioplayer_actions';
import AudioPlayer from './audioPlayer';



const mSTP = state => {

    
    return {
        currentTrack: state.ui.audioPlayer.track,
        tracks: Object.values(state.entities.tracks),
        isPlaying: state.ui.audioPlayer.isPlaying
    }
}


const mDTP = dispatch => {

    return {
        setTrack: track => dispatch(setTrack(track)),
        playTrack: () => dispatch(playTrack()),
        pauseTrack: () => dispatch(pauseTrack())
    }


} 


export default connect(mSTP, mDTP)(AudioPlayer);
