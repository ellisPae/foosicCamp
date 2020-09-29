import { connect}  from 'react-redux';
import { fetchUser } from '../../actions/user_actions'
import { updateTrack } from '../../actions/track_actions';
import TrackForm from './track_form';


const mSTP = (state, ownProps) => {
    let userId = ownProps.match.params.userId;

    return {
        errors: state.errors.tracks,
        track: state.track,
        formType: 'Edit Track',
        currentUser: state.entities.users[state.session.id],
        userId
    }
}



const mDTP = dispatch => {
    return {
        fetchUser: userId => dispatch(fetchUser(userId)),
        processForm: track => dispatch(updateTrack(track))
    }
}


export default connect(mSTP, mDTP)(TrackForm);
