import { connect } from 'react-redux';

import { fetchAlbum } from '../../actions/album_actions';
import { setTrack, playTrack, pauseTrack } from '../../actions/audioplayer_actions';
import AlbumShow from './album_show';


const mSTP = (state, ownProps) => {
    let albumId = ownProps.match.params.albumId;
    const album = state.entities.albums[albumId];
    const artist = album ? state.entities.users : "";
    const tracks = album ? album.tracks : "";
    const artistAlbums = artist ? artist.albums : "";
    
   
    return {
        album: album,
        artistAlbums: Object.values(artistAlbums),
        artist: artist,
        tracks: Object.values(tracks),
        isPlaying: state.ui.audioPlayer.isPlaying,
        albumId
    }
}


const mDTP = dispatch => {
    return {
        fetchAlbum: albumId => dispatch(fetchAlbum(albumId)),
        setTrack: track => dispatch(setTrack(track)),
        playTrack: () => dispatch(playTrack()),
        pauseTrack: () => dispatch(pauseTrack())
    }
}


export default connect(mSTP, mDTP)(AlbumShow);