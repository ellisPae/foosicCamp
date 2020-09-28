import React from 'react';
import { Link } from 'react-router-dom';
let FontAwesome = require('react-fontawesome')



class SignedInNav extends React.Component {
    constructor(props) {
        super(props);
        
        
        this.container = React.createRef();
        this.state = { open: false };
        this.handleClick = this.handleClick.bind(this);
        this.handleClickOutside = this.handleClickOutside.bind(this);
        // this.toggleList = this.handleClick.bind(this);
    }

    handleClick() {
        this.setState({ open: !this.state.open })
    }

    handleClickOutside(e) {
        e.stopPropagation();
        this.setState({ open: false })
    }


    // toggleList() {
    //     this.setState(prevState => ({ open: !prevState.open }))
    // }

    render() {
        const dropdownClass = this.state.open ? "dropdown" : "hidden";
        const ddContainer = this.state.open ? "ddContainer" : "hidden";
    
        return (
            
            <div className="signedin-nav">
                {/* <ul> */}
                    <div className='signed-nav-icons'>
                        {/* <li>
                            <Link className='newsfeed-icon-link' to={'/newsfeed'}>
                                <img className='newsfeed-img' src={lightning_icon} alt="newsfeed"/>                            
                            </Link>
                        </li>
                        <li >
                            <Link className='collection-icon-link' to={`/user/${this.props.currentUser.id}`}>
                                <img className='collection-img' src={heart_icon} alt="collection" />
                            </Link>
                        </li> */}
                        <li >
                            <Link className='notificiation-link' to={`/user/${this.props.currentUser.id}`}>
                                <img className='notification-img' src={notification_icon} alt="notifiction" />
                            </Link>
                        </li>

                    <li className="user-container" ref={this.container}>
                            <div className="user-icon" onClick={this.handleClick}>
                                <img className="circle-img" src={user_logo} alt="user-icon"/>
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
                                        <div className='dd-items'><li>subscription</li></div>
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
                        </li>
                    </div>
                {/* </ul> */}
            </div>
        )
    }

}


export default SignedInNav;
