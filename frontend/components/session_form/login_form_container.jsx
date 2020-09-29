import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { login, clearErrors } from '../../actions/session_actions';
import SessionForm from './session_form';

const mSTP = ({ errors }) => {
    // giving passed props a piece of state
    return {
        errors: errors.session,
        // this.props.errors = state.errors.session
        formType: 'login',
        navLink: <Link to="/signup">Sign Up</Link>,
    };
};

const mDTP = dispatch => {
    // giving passed props actions
    return {
        processForm: user => dispatch(login(user)),
        // => this.props.processForm
        clearErrors: () => dispatch(clearErrors())
    };
};

export default connect(mSTP, mDTP)(SessionForm);