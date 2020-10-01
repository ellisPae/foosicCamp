import { combineReducers } from 'redux';

import audioPlayer from './audioPlayer_reducer';


const uiReducer = combineReducers(
    {  audioPlayer }
)

export default uiReducer;