import { connect } from 'react-redux';
import { createTrack } from '../../actions/track_actions';
import { fetchUserAlbums, updateAlbum } from '../../actions/album_actions';
import TrackForm from './track_form';


const mSTP = (state, ownProps) => {
    let userId = ownProps.match.params.userId;

    return {
        track: {
            artist_id: userId,
            album_id: "",
            title: "",
            price: "",
            release_date: "",
            description: "",
            credits: ""
        },
        errors: state.errors.tracks,
        formType: 'Create Track',
        currentUser: state.entities.users[state.session.id],
        userId
    }
}



const mDTP = dispatch => {
    return {
        processForm: track => dispatch(createTrack(track)),
        fetchUserAlbums: userId => dispatch(fetchUserAlbums(userId)),
        updateAlbum: album => dispatch(updateAlbum(album))
    }
}


export default connect(mSTP, mDTP)(TrackForm);
