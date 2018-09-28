/* @flow */

import type {ChatInterface, GreetingInterface} from './simple/foo';


const HELLO = 0;

const chat:ChatInterface = {
    greeting: {
        type: HELLO,
        text: 'Hi'
    },
    body: 'How are you?'
};
