import React from 'react';
import { Link } from 'react-router-dom';
import AudioPlayer from '../../components/audioplayer/audioPlayer_container';


class TrackShow extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchTrack(this.props.trackId)
        // this.props.fetchUserAlbums(this.props.track.aritst_id)
 
    }

    // componentDidUpdate(prevProps) {
    //     if (prevProps.match.params.trackId !== this.props.trackId) {
    //         this.props.fetchTrack(this.props.trackId)
    //     }
    // }


    renderDiscography() {
        if (!this.props.artistAlbums) {
            return null;
        }
    
        return this.props.artistAlbums.map((album, i) => {
            return (
                <div className='discography-grid' key={i}>
                    <Link to={`/albums/${album.id}`}>
                        <img src={album.picUrl}/>
                        <p className='track-disco-album-title'>{album.title}</p>
                        <p className='track-disco-album-date'>{album.release_date}</p>
                    </Link>
                </div>
            )
        })
    }

    renderTrackImg() {
        if (this.props.track.album_id) {
            return (
                <div className='track-show-track-img'>
                    <img src={this.props.album.picUrl} />
                </div>
            )
        } else {
            return (
                <div className='track-show-track-img'>
                    <img src={no_image}/>
                </div>
            )
        }
    }

    render() {
 
        if (!this.props.track) {
            return null;
        }


        return (
            <div className='outer-track-container'>
                <div className='inner-track-container'>
                    <div className='track-box'>
                        <div className='banner'></div>
                        <div className='track-topbar'>
                            <div className='topbar-menu'>
                                <a href="">music</a>
                                <a href="">community</a>
                            </div>

                        </div>
                        <div className='trackbox-content'>
                            <div className='trackbox-inner-l'>
                                <div className='trackbox-inner-l1'>
                                    {this.renderTrackImg()}
                                    <div className="share-wishlist">
                                        <Link className='share-box'to=''>
                                            <img className='share'src={share_icon}/>
                                            <p>Share / Embed</p>
                                        </Link>
                                        <Link className='heart-box'to=''>
                                            <img className='heart' src={heart_icon} />
                                            <p>Wishlist</p>
                                        </Link>                                  
                                    </div>
                                    <div className='supported-by'>
                                        <p>supported by</p>
                                        <div className='supporters'></div>
                                    </div>
                                </div>
                                <div className='trackbox-inner-l2'>
                                    <div className='track-show-player'>
                                        {/* <div className='track-show-title'><h2>{this.props.track.title}</h2></div>
                                        <div className='track-show-by'><h5>by {this.props.artist.artist_name}</h5></div> */}
                                        <AudioPlayer track={this.props.track} artist={this.props.artist}/>
                                        <div className='other-content'></div>
                                    </div>
                                </div>
                            </div>
                            <div className='trackbox-inner-r'>
                                <div className='track-artist-info'>
                                    <div className='artist-pic'><Link to={`/users/${this.props.artist.id}`}><img src={this.props.artist.picUrl} /></Link></div>
                                    <div className='shit'>
                                        <div className='artist-name'><p className='name'>{this.props.artist.artist_name}</p></div>
                                        <div className='artist-loc'><p className='loc'>{this.props.artist.location}</p></div>
                                    </div>
                                    <button className='follow-button'>Follow</button>
                                    <div>{this.props.artist.description}</div>
                                    <div className="discography">
                                        <div className='disco1'><div className='disco2'>discography</div></div>
                                        {this.renderDiscography()}
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>

                </div>

            </div>

        )
    }
}

export default TrackShow;