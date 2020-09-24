import { connect } from 'react-redux';
import MainNav from './main_nav';
import { logout } from '../../actions/session_actions';





const mSTP = ({ session, entities: { users } }) => {
    return {
        currentUser: users[session.id]
    };
};

const mDTP = dispatch => {
    return {
        logout: () => dispatch(logout())
    }
};


export default connect(mSTP, mDTP)(MainNav)
// MainNav - For testing purposes => Switch back to SignedInNav