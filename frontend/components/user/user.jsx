import React from 'react';
import { Link } from 'react-router-dom';

class User extends React.Component {
    constructor(props) {
        super(props);

        this.state = { open: false }
        this.container = React.createRef();
        this.handleClick = this.handleClick.bind(this);
        this.handleClickOutside = this.handleClickOutside.bind(this);
    }

    componentDidMount() {
        this.props.fetchUser(this.props.userId);
    }

    handleClick() {
        this.setState({ open: !this.state.open })
    }

    handleClickOutside(e) {
        e.stopPropagation();
        this.setState({ open: false })
    }



    render() {
        const ddContainer = this.state.open ? "ddContainer" : "hidden";
        const dropdownClass = this.state.open ? "dropdown" : "hidden";

        return (
            <div>
                <nav className='user-nav'>
                    <div className='user-nav-left'>
                        <Link className='nav-homepage-link'to='/'>
                            <div className='square-logo'></div>
                            <div className='logo'>foosiccamp</div>
                        </Link>
                    </div>
                    <div className='user-nav-right'>
                        <div className='notification-icon'>
                            <a href=""><img src={notification_icon} alt="notifications"/></a>
                        </div>
                        <div className={ddContainer} onClick={this.handleClickOutside}></div>
                        <ul className={dropdownClass}>
                            {/* <li> */}
                            <div className="dd-items">
                                <Link to={`/users/$this.props.currentUser.id`}>
                                    <div className="dd-username">
                                        <p className="username">{this.props.currentUser.username}</p>
                                        <p className='view-collection'>view collection</p>
                                    </div>
                                </Link>
                            </div>
                            {/* </li> */}
                            <div className='dd-items' id='edit-dd'><li>edit profile</li></div>
                            <div className='dd-items' id='tools-dd'><li>tools</li></div>
                            <div className='dd-items' id='subscription-dd'><li>subscription</li></div>
                            <p className="dd-line">_________________________</p>
                            <div className='dd-items' id='settings-dd'><li>settings</li></div>
                            <div className='dd-items' id='guide-dd'><li>edit profile</li></div>
                            <div className='dd-items'><li>help</li></div>
                            <div className='dd-items'>
                                <li>
                                    <div className='logout-btn' onClick={() => this.props.logout()}>log out</div>
                                </li>
                            </div>
                        </ul>
                        
                    </div>
                
                </nav>

                <div className='user-homepage'>
                    <div className='user-homepage-left'>
                        <div className='user-topbar'>
                            <a href="">music</a>
                            <a href="">merch</a>
                            <a href="">community</a>
                        </div>

                        <div className='user-content'>
                        </div>
                    </div>

                    <div className='user-homepage-right'>
                        <div className='user-profile'></div>
                    </div>

                </div>


            </div>
        )
    }

}

export default User;