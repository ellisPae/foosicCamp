import React from 'react';


class AudioPlayer extends React.Component {
    constructor(props) {
        super(props);

        this.audioPlayer = React.createRef();
        // this.state = this.props
        this.handleNext =this.handleNext.bind(this);
    }

    
    componentDidMount() {
        if (!this.props.currentTrack) {
            this.props.setTrack(this.props.tracks[0])
        }
    }

    // componentDidUpdate(prevProps) {
    //     if (this.prevProps.matchParams.id !== this.props.ma) {}
    //     this.props.setTrack(this.props.track)
    // }



    // handlePlayPause() {
    //     if (this.props.isPlaying) {
    //         this.props.pauseTrack();
    //     } else {
    //         this.props.playTrack();
    //     }
    // }

    handleNext(e) {
        e.preventDefault();
        for (let i = 0; i < this.props.length; i++) {
            let currentIdx = this.props.tracks.indexOf(this.props.currentTrack)
            if (this.props.tracks.indexOf(this.props.tracks[i]) === currentIdx) {
                this.props.currentTrack = this.props.tracks[i+1];
                this.props.isPlaying = true;
                return currentTrack;
            }
        
        }
    }





    render() {
        if (!this.props.currentTrack) {
            return null;
        }

        // const playPauseButton = this.props.isPlaying ? pause_icon : play_icon

        return (
            <div className='player-container' >
                <div className='track-show-title'><h2>{this.props.currentTrack.title}</h2></div>
                <div className='track-show-by'><h5>by {this.props.artist.artist_name}</h5></div>
                <audio className="player" src={this.props.currentTrack.trackUrl} ref={this.audioPlayer} controls>
                    {/* <div className='controllers'>
                        <button className='play-pause'onclick={this.handlePlayPause}><img src={playPauseButton}/></button>
                    </div> */}
                    <button onClick={() => this.handleNext()}> <h3>Next</h3> </button>
                </audio>
            </div>
        )
    }
}






export default AudioPlayer;