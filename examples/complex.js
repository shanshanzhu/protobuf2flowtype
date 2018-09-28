/* @flow */

import type {Test1Interface, Test2Interface, Test3Interface} from './complex/com/example/test';

import type {ContainerInterface, GenericInterface} from './complex/com';

import type {Module1TestInterface} from './complex/com/foobar/module1';

import type {GenericInterface as Module2Generic} from './complex/com/example/module2';

import type {SubMessageInterface} from './complex/com/foobar/module1/Module1Test';


const SUCCESS = 0;

const test1:Test1Interface = {
    value: {
        doubleValue: 1.4
    },
    result: SUCCESS
};

const subMessage:SubMessageInterface = {
    mySubData: 'test'
};

const test2:Test2Interface = {
    module1Test: {
        myData1: 32,
        myData2: 'hello',
        mySubMsg: subMessage
    },
    module1SubTest: [subMessage, subMessage]
};

const mod2Generic:Module2Generic = {
    anotherTest: 5
};

const test3:Test3Interface = {
    baseGeneric: {
        test: 'abc123'
    },
    module2Generic1: mod2Generic,
    module2Generic2: mod2Generic,
    module2Generic3: mod2Generic
};
