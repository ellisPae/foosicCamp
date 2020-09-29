import React from 'react';
import { Link } from 'react-router-dom';
import SignedInNav from './signed_in_nav';



class MainNav extends React.Component {
    constructor(props) {
        super(props);

    }


    handleClick(e) {
        e.preventDefault();
        this.setState(!this.state.isOpen)
    }

    // handleLogout(e) {
    //     e.preventDefault();
    //     this.props.logout()
    // }


    renderSignedOutNav() {
        return(
            <div className="signedout-nav">
                    <Link className="signup-link"to={'/signup'}>sign up</Link>
                    <Link className="login-link" to={'/login'}>log in</Link>
            </div>
        )
    }

    renderMotto() {
        if (!this.props.currentUser && this.props.location.pathname === '/') {
            return (
                <div className='motto'>Discover amazing new music and <a href="">directly support</a> the artists who make it.</div>
            )
        }
    }


    // renderSkinnyNav() {
    //     if (this.props.location.pathname !== '/login' || this.props.location.pathname !== '/signup') {
    //         return ""
    //     } else {
    //         return "hidden"
    //     }

    // }

    // renderAdd() {
    //     if (this.props.match.params.userId === this.props.currentUser.id) {
    //         return (

    //         )
    //     }
    // }




    render() {
        const mainNav = this.props.currentUser ? 'loggedInNav-left' : 'main-nav-left';
        const wholeNav = this.props.currentUser ? 'artist-nav' : this.props.location.pathname === '/' ? 'splash-nav' : 'artist-nav';

        if (this.props.location.pathname === '/login' || this.props.location.pathname === '/signup') {
            return null;
        }


        return (
            <nav className={wholeNav}>
                
                <div className={mainNav}>
                    <Link to="/" className="header-link">
                            <div className="square-logo">▰</div>
                            <div className='logo'>foosiccamp</div>
                        {/* {this.renderMotto()} */}
                    </Link>
                    {this.renderMotto()}
                </div>


                <div className='main-nav-right'>
                    {this.props.currentUser ? 
                        <SignedInNav 
                            className="SignedInNav" logout={this.props.logout} 
                            currentUser={this.props.currentUser} /> : 
                    this.renderSignedOutNav()}
                </div>
            </nav>
        )
    }


}


export default MainNav;
