import * as UserApiUtil from '../util/user_api_util';

export const RECEIVE_ALL_USERS = 'RECEIVE_ALL_USERS'
export const RECEIVE_USER = 'RECEIVE_USER';
export const RECEIVE_USER_ERRORS = 'RECEIVE_USER_ERRORS'


export const receiveAllUsers = users => {
    return {
        type: RECEIVE_ALL_USERS,
        users
    }
}

export const receiveUser = user => {
    return {
        type: RECEIVE_USER,
        user
    }
}

const receiveUserErrors = errors => {
    return {
        type: RECEIVE_USER_ERRORS,
        errors
    }
}



export const fetchUsers = () => dispatch => {
    return UserApiUtil.fetchUsers().then(
        (users) => dispatch(receiveAllUsers(users)),
        (errors) => dispatch(receiveUserErrors(errors))
    )
}

export const fetchUser = userId => dispatch => {
    return UserApiUtil.fetchUser(userId).then(
        (user) => dispatch(receiveUser(user)),
        (errors) => dispatch(receiveUserErrors(errors))
    )
}