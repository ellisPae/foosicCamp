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
    
    componentDidUpdate(prevProps) {
        if (prevProps.match.params.userId !== this.props.userId) {
            this.props.fetchUser(this.props.userId)
        }
    }

    handleClick() {
        this.setState({ open: !this.state.open })
    }

    handleClickOutside(e) {
        e.stopPropagation();
        this.setState({ open: false })
    }


    renderAlbums() {
        
        return this.props.albums.map((album, i) => {
            return (
                <div className='user-albums-grid' key={i}>
                    <div className='user-album'>
                        <Link to={`/albums/${album.id}`}>
                            <div className='album-pic'><img src={album.picUrl}/></div>
                            <div className='album-title'>{album.title}</div>
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
                    <div className='user-tracks-grid' key={i}>
                        <div className='user-track'>
                            <Link to={`/tracks/${tracks.id}`}>
                                <div className='track-pic'><img src={track.album_id ? albums[track.album_id].picUrl : null}/></div>
                                {/* <div className='track-pic'><img src={track.picUrl} /></div> */}
                                <div className='track-title'>{track.title}</div>
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
        <                   div className="user-show-img"><img src={this.props.user.picUrl}/></div>
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