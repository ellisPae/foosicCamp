import { connect } from 'react-redux';
import { fetchAllAlbums, clearAlbums } from '../../actions/album_actions';
import { fetchUsers } from '../../actions/user_actions';
import { withRouter } from 'react-router-dom';
import MainPage from './main';

const mSTP = state => {
    return {
        albums: Object.values(state.entities.albums),
        // users: state.entities.users
    }
}

const mDTP = dispatch => {
    return {
        fetchAllAlbums: () => dispatch(fetchAllAlbums()),
        clearAlbums: () => (dispatch(clearAlbums()))
    }
}

export default withRouter(connect(mSTP, mDTP)(MainPage));
