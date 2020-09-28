import { connect}  from 'react-redux';
import { updateTrack } from '../../actions/track_actions';
import { fetchUserAlbums } from '../../actions/album_actions';
import TrackForm from './track_form';


const mSTP = (state, ownProps) => {
    let userId = ownProps.match.params.userId;

    return {
        track: state.track,
        formType: 'Edit Track',
        userId
    }
}



const mDTP = dispatch => {
    return {
        processForm: track => dispatch(updateTrack(track)),
        fetchUserAlbums: userId => dispatch(fetchUserAlbums(userId))
    }
}


export default connect(mSTP, mDTP)(TrackForm);
