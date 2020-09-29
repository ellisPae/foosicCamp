import React from 'react';

class TrackForm extends React.Component {

    constructor(props) {
        super(props);

    }

    handleSubmit() {
        this.props.processForm
    }

    render() {
        return (
            <div className="trackform-outer">
                <div className='trackform-inner'>
                    <div className='trackform-inner-left'>
                        <div className='tf-l1'></div>
                        <div className='tf-l2' className='track-details'>

                        </div>
                        <div className='tf-l3'>

                        </div>

                    </div>
                    <div className='trackform-inner-right'>
                        <div className='track-inputs'>

                            <div className='track-name'>
                                <input className='track-name-input' type="text" value='track name'/>
                            </div>
                            <div className='track-price'>
                                <div className='track-price-1'>
                                    <p>track pricing:</p>
                                    <a href="">What pricing performs best?</a>
                                </div>
                                <div className='track-price-2'>
                                    <input type="number" value='1.00'/>
                                    <p className='currency'>US Dollars</p>
                                    <p className='track-price-note'>enter zero or more</p>
                                    <input type="checkbox" name="let fans pay more if they want"/>
                                </div>
                                <div className='track-price-3'>
                                    <p className='paepal'>Payments will go to <strong>{this.props.currentUser.email}</strong> via PaePal</p>
                                    <a className='more-info' href="">more info</a>
                                </div>
                                <div className='track-price-4'>
                                    <a href="">description</a>
                                </div>
                            </div>
                            <div className='about-track'>
                                    <label className='about-track-label'>about this track:</label>
                                    <textarea className='about-track-text' value='optional'>
                                    <label className='track-lyrics-label'>lyrics:</label>
                                    <textarea className='track-lyrics-text'value='optional'>
                                    <label className='track-credits-label'>track credits:</label>
                                    <textarea className='track-credits-text'alue='optional'>
                            </div>
                        </div>
                    </div>

                </div>
                
            </div>
        )
    }






}

export default TrackForm