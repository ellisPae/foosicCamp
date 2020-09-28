import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { RECEIVE_ALL_USERS, RECEIVE_USER } from '../actions/user_actions';


const usersReducer = (oldState = {}, action) => {
    Object.freeze(oldState);
    let newState = Object.assign({}, oldState)

    switch (action.type) {
        case RECEIVE_CURRENT_USER:
            // return Object.assign({}, state, { [action.currentUser.id]: action.currentUser });
            newState[action.currentUser.id] = action.currentUser
            return newState;
        case RECEIVE_ALL_USERS:
            newState = action.users
            return newState;
        case RECEIVE_USER:
            newState[action.user.id] = action.user
            return newState;
        default:
            return oldState;
    }
};

export default usersReducer;
