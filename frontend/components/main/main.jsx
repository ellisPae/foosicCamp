import React from 'react';
import { Link } from 'react-router-dom';
import Newsfeed from './splash_newsfeed';

class MainPage extends React.Component {

    constructor(props) {
        super(props);
    }


    componentDidMount() {
        this.props.fetchAllAlbums();
        // this.props.fetchUsers();
    }

    componentWillUnmount() {
        this.props.clearAlbums();
    }
    

    // componentDidUpdate(prevProps) {

    // }

    render() {
        if (!this.props.albums) {
            return null;
        }

        return (
            <div>
                <div className="eugene">
                    <Newsfeed props={this.props}/>
                </div>
                <div className='fans-have-box'>
                    <div className="fans-have">
                        <p>Fans have paid artists <strong>$589 million</strong> using <strong>Foosiccamp,</strong> and <strong>17.1 milion</strong> in the last 30 days alone</p>
                    </div>
                </div>
                <div className='salesfeed'> 
                    <div className='salesfeed-row'>
                        <div className='salesfeed-title'><p>SELLING RIGHT NOW</p></div>
                    </div>
                    <div className='salesfeed-box'>
                        <div className='items'>
                            {this.props.albums.map((album, i) => {
                                return (
                                    <div className='selling-albums' key={i}>
                                        <div className='hot-album'>
                                            <Link to={`/albums/${album.id}`}>
                                                <img src={album.picUrl}/>
                                                <div className="hot-album-title">{album.title}</div>
                                                {/* <div className='hot-album-artist'>{album.artist.artist_name}</div> */}
                                                {/* <div className='hot-album-price'>{album.price}</div> */}
                                            </Link>
                                        </div>
                                    </div>
                                )
                            })}
                        </div>
                    </div>
                </div>
                <div className="lower-part"></div>
            </div>

        )
    }

}

export default MainPage;