import React from 'react';
import { Link } from 'react-router-dom';

class User extends React.Component {
    constructor(props) {
        super(props);

        // this.state = { shown: false }
        this.container = React.createRef();
        this.handleClick = this.handleClick.bind(this);
        this.handleClickOutside = this.handleClickOutside.bind(this);
    }

    componentDidMount() {
        this.props.fetchUser(this.props.userId)

    }
    
    // componentDidUpdate() {
    //     this.props.fetchUser(this.props.userId)
    // }

    handleClick() {

        this.setState({ open: !this.state.open })
    }

    handleClickOutside(e) {
        e.stopPropagation();
        this.setState({ open: false })
    }


    renderAlbums() {
        console.log(this.props.albums)
        // debugger
        return this.props.albums.map((album, i) => {
            return (
                <div className='user-albums-grid'>
                    <div className='user-album' key={i}>
                        <Link to={`/users/${this.props.userId}/albums/${i}`}>
                            {/* <div>{album.attached_photo}</div> */}
                                <div>{album.title}</div>
                        </Link>
                    </div>
                </div>
            )
        })
    }

    renderTracks() {
        return this.props.tracks.map((track, i) => {
            if (track.album_id === null) {
                return (
                    <div className='user-tracks-grid'>
                        <div className='user-track' key={i}>
                            <Link to={`/users/${this.props.userId}/tracks/${i}`}>
                                {/* <div>{track.attached_photo}</div> */}
                                <div>{track.title}</div>
                            </Link>
                        </div>
                    </div>
                )
            }
        })
    }
    


    render() {
        if (!this.props.user) {
            return null;
        }

        return (
            <div className="user-outer">
                <div className='user-profile'>

                    <div className="user-profile-1"></div>

                    <div className='user-profile-2'>
                        <div className="user-topbar-container">
                            <div className='user-topbar'>
                                <div className="topbar-music"><a href="">music</a></div>
                                <div className="topbar-merch"><a href="">merch</a></div>
                                <div className="topbar-music"><a href="">community</a></div>
                            </div>
                        </div>
                    </div>

                    <div className='user-profile-3'>
                        <div className="user-profile-3l">
                            {this.renderAlbums()}
                            {this.renderTracks()}
                        </div>
                        <div className='user-profile-3r'>
                            <div className='user-desc'>
                                <div className="user-show-img">artist image</div>
                                <div className="user-show-name">{this.props.user.artist_name}</div>
                                <div className="user-show-loc">{this.props.user.location}</div>
                                <button>Follow</button>
                            </div>
                        </div> 

                    </div>

                </div>
            </div>
        )
    }
}


export default User;