import { RECEIVE_USER_ERRORS, RECEIVE_ALL_USERS, RECEIVE_USER } from '../actions/user_actions';


let _defaultErrors = []

const usersErrorsReducer = (errors = _defaultErrors, action) => {
    Object.freeze(errors)

    switch (action.type) {
        case RECEIVE_USER_ERRORS:
            return action.errors
        case RECEIVE_ALL_USERS:
            return [];
        case RECEIVE_USER:
            return [];
        default:
            return errors
    }
}

export default usersErrorsReducer;