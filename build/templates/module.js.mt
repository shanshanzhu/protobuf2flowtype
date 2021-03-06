// @flow


{{#package}}

/*:: #*/

    import {Protobuf$Message} from 'protobuf2flowtype-typetool-runtime';

    import type {ByteBuffer, ProtoBuf$Builder, ProtoBuf$MessageLiteral, Protobuf$RefectType} from 'protobuf2flowtype-typetool-runtime';

    {{#imports}}

        {{#types}}
            import type {
                {{#names}}
                    {{name}} as {{alias}},
                {{/names}}
            } from '{{{location}}}';
        {{/types}}

        {{#clazz}}
            import {
                {{#names}}
                    {{name}} as {{alias}},
                {{/names}}
            } from '{{{location}}}';
        {{/clazz}}

    {{/imports}}

    {{#enums}}

        type {{name}}Options = {
            {{#values}}
                {{name}}: {{id}};
            {{/values}}
        }

        type {{name}}Values = {{valueList}};

    {{/enums}}

    {{#messages}}

        type {{name}}Interface = ProtoBuf$MessageLiteral & {
            {{#fields}}
                {{name}}{{#optional}}?{{/optional}}: {{#voidable}}?{{/voidable}}{{{type.interface}}};
            {{/fields}}
        };
        type {{name}}Reflect = Protobuf$RefectType<{{name}}Interface>;


        declare class {{name}}Builder extends Protobuf$Message<{{name}}Interface, {{name}}Reflect> {
            constructor(values: {{name}}Interface): {{name}}Builder;

            {{#fields}}
                {{name}}{{#optional}}?{{/optional}}: {{#voidable}}?{{/voidable}}{{{type.builder}}};
                get{{upperName}}(): {{#voidable}}?{{/voidable}}{{{type.builder}}};
                set{{upperName}}({{name}}: {{#voidable}}?{{/voidable}}{{{type.builder}}}): void;
            {{/fields}}

            {{#oneOfs}}
                {{name}}: string;
            {{/oneOfs}}
        };

        {{#oneOfs}}
            type {{typeName}} = {{fieldTypes}};
            export type { {{typeName}} };
        {{/oneOfs}}

    {{/messages}}

    type {{dollar}} = {
        {{#messages}}
            {{name}}: Class<{{name}}Builder>,
        {{/messages}}
        {{#enums}}
            {{name}}: {{name}}Options,
        {{/enums}}
    }

    export type {
        {{#messages}}
            {{name}}Interface, {{name}}Reflect,
        {{/messages}}
        {{#enums}}
            {{name}}Values, {{name}}Options,
        {{/enums}}
    };

    {{#messages}}
        export { {{name}}Builder };
    {{/messages}}

/*$ */

{{/package}}
