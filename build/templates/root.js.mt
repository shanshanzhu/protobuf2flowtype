// @flow

const jsonDescriptor = {{{jsonDescriptor}}};

const ProtoBuf = require('protobufjs');
const builder = new ProtoBuf.Builder();
for (const ns of jsonDescriptor) {
    builder['import'](ns.json, ns.filename);
}

/*:: #*/
export {builder};
export default builder;
/*$ */
