import React from 'react';
import { Provider } from 'react-redux';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import MainNavContainer from './navbar/usernav_container';
import CreateTrackContainer from './tracks/create_track_form_container';
import EditTrackContainer from './tracks/edit_track_form_container';
import UserContainer from './user/user_container';
import TrackShowContainer from './tracks/track_show_container';
import AlbumShowContainer from './albums/album_show_container';
import MainPageContainer from './main/main_container'


const App = () => (
    <div>
        <header>
        </header>
            <Route path='/' component={MainNavContainer} />
        <Switch>
            <Route exact path="/" component={MainPageContainer} />
            {/* <ProtectedRoute exact path="/tracks/new" component={CreateTrackContainer}/> */}
            {/* <ProtectedRoute exact path="/tracks/edit" component={CreateTrackContainer} /> */}
            <AuthRoute exact path="/login" component={LogInFormContainer} />
            <AuthRoute exact path="/signup" component={SignUpFormContainer} />
            <Route path='/users/:userId' component={UserContainer} />
            <Route exact path='/tracks/:trackId' component={TrackShowContainer} />
            <Route exact path='/albums/:albumId' component={AlbumShowContainer} />
        </Switch>
    </div>
);

export default App;
