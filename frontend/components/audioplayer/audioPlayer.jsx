import React from 'react';

class AudioPlayer extends React.Component {
    constructor(props) {
        super(props);


        this.audioPlayer = React.createRef();
    }
    
    //ref options:
    // -Play
    // Pause
    // last song
    // next song
    // timestamp / duration
    // track title
    

    componentDidMount() {
        this.props.setTrack(this.props.track)
    }

    // handlePlayPause() {
    //     if (this.props.isPlaying) {
    //         this.props.pauseTrack();
    //     } else {
    //         this.props.playTrack();
    //     }
    // }








    render() {
        if (!this.props.currentTrack) {
            return null;
        }

        // const playPauseButton = this.props.isPlaying ? pause_icon : play_icon

        return (
            <div className='player-container' >
                <audio className="player" src={this.props.currentTrack.trackUrl} ref={this.audioPlayer} controls>
                    {/* <div className='controllers'>
                        <button className='play-pause'onclick={this.handlePlayPause}><img src={playPauseButton}/></button>
                    </div> */}
                </audio>
            </div>
        )
    }
}


export default AudioPlayer;