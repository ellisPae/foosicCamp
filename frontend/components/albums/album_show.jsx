import React from 'react';
import { Link } from 'react-router-dom';
import AudioPlayer from '../../components/audioplayer/audioPlayer_container';


class AlbumShow extends React.Component {
    constructor(props) {
        super(props);
    
    }

    componentDidMount() {
        this.props.fetchAlbum(this.props.albumId)
       
    }

    componentDidUpdate(prevProps) {
        if (prevProps.match.params.albumId !== this.props.albumId) {
            this.props.fetchAlbum(this.props.albumId)
        }
    }


    renderDiscography() {
        if (!this.props.artistAlbums) {
            return null;
        }

        return this.props.artistAlbums.map((album, i) => {

            return (
                <div className='discography-grid' key={i}>
                    <Link to={`/albums/${album.id}`}>
                        <img src={album.picUrl} />
                        <p className='album-disco-album-title'>{album.title}</p>
                        <p className='album-disco-album-date'>{album.release_date}</p>
                    </Link>
                </div>
            )
        })
    }

    renderAlbumImg() {
        
        if (this.props.album.picUrl) {
            return (
                <div className='album-show-album-img'>
                    <img src={this.props.album.picUrl} />
                </div>
            )
        } else {
            return (
                <div className='album-show-album-img'>
                    <img src={no_image} />
                </div>
            )
        }
    }

    renderPlayer() {
        
        return (
            <AudioPlayer tracks={this.props.tracks} artist={this.props.artist}/>
        )
    }



    render() {
        if (!this.props.album) {
            return null;
        }
        
       
        return (
            <div className='outer-album-container'>
                <div className='inner-album-container'>
                    <div className='album-box'>
                        <div className='banner'></div>
                        <div className='album-topbar'>
                            <div className='topbar-menu'>
                                <a href="">music</a>
                                <a href="">community</a>
                            </div>
                        </div>
                        <div className='albumbox-content'>
                            <div className='albumbox-inner-l'>
                                <div className='albumbox-inner-l1'>
                                    {this.renderAlbumImg()}
                                    <div className="share-wishlist">
                                        <Link className='share-box' to=''>
                                            <img className='share' src={share_icon} />
                                            <p>Share / Embed</p>
                                        </Link>
                                        <Link className='heart-box' to=''>
                                            <img className='heart' src={heart_icon} />
                                            <p>Wishlist</p>
                                        </Link>
                                    </div>
                                    <div className='supported-by'>
                                        <p> supported by</p>
                                        <div className='supporters'></div>
                                    </div>
                                </div>
                                <div className='albumbox-inner-l2'>
                                    <div className='album-show-player'>
                                        {/* <div className='album-show-title'><h2>{this.props.artist.title}</h2></div>
                                        <div className='album-show-by'><h5>by {this.props.artist.artist_name}</h5></div> */}
                                        {/* <AudioPlayer track={this.props.tracks}/> */}
                                        {this.renderPlayer()}
                                        <div className='-album-other-content'>
                                            <div className='album-tracklist'>
                                                {this.props.tracks.map((track, i) => {
                                                    return (<div className='album-tracks' key={i}>
                                                        
                                                        <div>{i + 1}:   <Link to={`/tracks/${track.id}`}>{track.title}</Link></div>
                                                    </div>)
                                                })}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div className='albumbox-inner-r'>
                                <div className='album-artist-info'>
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

export default AlbumShow;