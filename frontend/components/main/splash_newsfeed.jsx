import React from 'react';
import { Link } from 'react-router-dom';


const Newsfeed = () => {
    return (
        <div className="newsfeed-container">
            <div className='newsfeed-inner'>
                
                <div className="newsfeed-left">
                    <div className="newsfeed1">
                        <Link to="/newsfeed1">
                            <img src={virtual_reality} alt="newsfeed1-img"/>
                        </Link>
                        <div className='newsfeed1-title'>The Future of Music Videos</div>
                        <div className='newsfeed1-tag'>SCENE REPORT</div>
                    </div>
                </div>

                <div className="newsfeed-right">
                    {/* <div> */}
                        <div className="newsfeed2">
                            <Link to="/newsfeed2">
                                <img src={empty_festival} alt="newsfeed-2-img" />
                                <div className='newsfeed234-title'>How Covid-19 is Affecting the Music Industry</div>
                                <div className='newsfeed234-tag'>SCENE REPORT</div>
                            </Link>
                        </div>
                    {/* </div> */}

                    <div className="newsfeed3">
                        <Link to="/newsfeed1">
                            <img src={guitarist1} alt="newsfeed3-img" />
                            <div className='newsfeed234-title'>Less Than a Year on the Scene and Already Making Noise</div>
                            <div className='newsfeed234-tag'>FEATURES</div>
                        </Link>
                    </div>


                    <div className="newsfeed4">
                        <Link to="/newsfeed4">
                            <img src={sad_artist} alt="newsfeed4-img" />
                            <div className='newsfeed234-title'>Why Artists Are Leaving Ooify</div>
                            <div className='newsfeed234-tag'>SCENE REPORT</div>
                        </Link>
                    </div>

                </div>
            </div>
        </div>
    )
}


export default Newsfeed;