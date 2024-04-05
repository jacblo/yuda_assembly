// You can access to the editor instance via module rocher_editor followed by the container id

// list of instruction types
const INSTRUCTIONS = [
    'mov', 'cmp', 'jmp', 'je', 'jne', 'jl', 'ret', 'add', 'sub'
];

// non-command key words (registers and 'ptr')
const KEYWORDS = [
    'ax', 'bx', 'ptr',
];

// setup editor
require(['rocher_editor_left_panel'], function (editor) {
    // bind F9 for running
    var myBinding = editor.addCommand(monaco.KeyCode.F9, function () {
        alert("F9 pressed!");
    });
    
    /*********************************************************\
    |               SETTING UP YUDA_ASM LANGUAGE              *
    \*********************************************************/
    monaco.languages.register({
        id: "yuda_asm"
    });
    
    // syntax highlighting
    monaco.languages.setMonarchTokensProvider("yuda_asm", {
        // Set defaultToken to invalid to see what you do not tokenize yet
        // defaultToken: 'invalid',

        // highlight upper and lowercase (INSTRUCTIONS is lowercase)
        keywords: INSTRUCTIONS.concat(INSTRUCTIONS.map(command => command.toUpperCase())),

        // highlight upper and lowercase (KEYWORDS is lowercase)
        typeKeywords: KEYWORDS.concat(KEYWORDS.map(keyword => keyword.toUpperCase())),

        operators: [',', ],

        symbols: /[,]+/,

        // The main tokenizer for our languages
        tokenizer: {
            root: [
                // identifiers and keywords
                [/[a-z_$][\w$]*/, {
                    cases: {
                        '@typeKeywords': 'keyword',
                        '@keywords': 'keyword',
                        '@default': 'identifier'
                    }
                }],

                // whitespace
                {
                    include: '@whitespace'
                },

                // delimiters and operators
                [/[{}()\[\]]/, '@brackets'],
                [/@symbols/, {
                    cases: {
                        '@operators': 'operator',
                        '@default': ''
                    }
                }],

                // label
                [/\.[\w0-9-_]+/, 'label'],

                // numbers
                [/0[xX][0-9a-fA-F]+/, 'number.hex'],
                [/\d+/, 'number'],
            ],

            whitespace: [
                [/[ \t\r\n]+/, 'white'],
                [/;.*$/, 'comment'],
            ],
        },
    });

    // very simple autocomplete
    monaco.languages.registerCompletionItemProvider("yuda_asm", {
        provideCompletionItems: (model, position) => {
            var word = model.getWordUntilPosition(position);
            var range = {
                startLineNumber: position.lineNumber,
                endLineNumber: position.lineNumber,
                startColumn: word.startColumn,
                endColumn: word.endColumn,
            };
            var suggestions = [];
            (INSTRUCTIONS+KEYWORDS).forEach((item) => {
                suggestions.push({
                    label: item,
                    kind: monaco.languages.CompletionItemKind.Keyword,
                    insertText: item,
                    range: range,
                });
            });
            return { suggestions: suggestions };
        },
    });

});

function save() {
    require(['rocher_editor_left_panel'], function (editor) {
        var source_code = editor.getValue();
        alert(source_code);
    });
}