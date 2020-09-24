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
    

    render() {
        return (
            <nav>
                <Link to="/" className="header-link">
                    <h1>
                        <div className="square-logo">▰
                            <div className='logo'>foosiccamp</div>
                        </div>
                    </h1>
                </Link>

                {this.props.currentUser ? 
                    <SignedInNav 
                        className="SignedInNav" logout={this.props.logout} 
                        currentUser={this.props.currentUser} /> : 
                this.renderSignedOutNav()}
            </nav>
        )
    }


}


export default MainNav;
