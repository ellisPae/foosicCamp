import { connect } from 'react-redux';

import { fetchUser } from '../../actions/user_actions'
import User from './user';




const mSTP = (state, ownProps) => {
    let userId = ownProps.match.params.userId;
    
    return {
        errors: state.errors.users,
        user: state.entities.users[userId],
        albums: Object.values(state.entities.albums),
        tracks: Object.values(state.entities.tracks),
        currentUser: state.entities.users[state.session.id],
        userId
    }
}

const mDTP = dispatch => {
    return {
        fetchUser: userId => dispatch(fetchUser(userId))
    }
}

export default connect(mSTP, mDTP)(User);