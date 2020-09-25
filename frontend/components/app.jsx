import React from 'react';
import { Provider } from 'react-redux';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
// import SplashContainer from './splash/splash_container';
import MainNavContainer from './navbar/usernav_container';
import Newsfeed from './main/splash_newsfeed';

const App = () => (
    <div>
        <header>
            <Route exact path='/' component={MainNavContainer} />  
        </header>
        < Newsfeed />
        <Switch>
            {/* <ProtectedRoute exact path="/" component={SplashContainer} */}
            <AuthRoute exact path="/login" component={LogInFormContainer} />
            <AuthRoute exact path="/signup" component={SignUpFormContainer} />
        </Switch>
    </div>
);

export default App;
