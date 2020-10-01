import { connect } from 'react-redux';

import { fetchAlbum } from '../../actions/album_actions';
import { setTrack, playTrack, pauseTrack } from '../../actions/audioplayer_actions';
import AlbumShow from './album_show';


const mSTP = (state, ownProps) => {
    let albumId = ownProps.match.params.albumId;
    // const tracks = album ? state.entities.tracks[albumId]: "";
    // const artist = album ? state.entities.users[album.artist_id] : "";
    // const artistAlbums = track ? state.entities.users[album.artist_id].albums : "";


    return {
        album: state.entites.albums[albumId],
        tracks: Object.values(album),
        artist: state.entities.artist,
        artistAlbums: Object.values(artistAlbums),
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