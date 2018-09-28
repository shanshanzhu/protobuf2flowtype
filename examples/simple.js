/* @flow */

import {GreetingType, type ChatInterface, type GreetingInterface} from './simple/foo';


const chat:ChatInterface = {
    greeting: {
        type: GreetingType.HELLO,
        text: 'Hi'
    },
    body: 'How are you?'
};
