import { handleActions } from 'redux-actions';
import * as actions from '../actions';

const initialState = {
  currentChannelId: null,
  channels: [],
};

export default handleActions({
  [actions.initApp](state, { payload }) {
    const { channels, currentChannelId } = payload;
    return { ...state, channels, currentChannelId };
  },

}, initialState);
