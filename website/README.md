# yuda_assembly

This project is a web-based assembly language interpreter for Yuda's Assembly. It allows you to write and run Yuda's Assembly code directly in your browser.

THE WEBSITE IS NON FUNCTIONAL AS OF NOW

## Getting Started

To get started with yuda_assembly, follow these steps:

1. Clone the repository
2. Navigate to the project directory: `cd yuda_assembly/website`
3. Install the dependencies: `pipenv install`
4. Enter the env with `pipenv shell` or similar
5. change directory into the main repo - `cd ..`
6. Start the development server: `flask --app website run --port XXXX --`

## Features

- Syntax highlighting for Yuda's Assembly code
- Real-time code execution
- Error handling
- Might have a Hardware implementation that's available to use at some point

## Usage

1. Open your web browser and navigate to `http://localhost:XXXX`.
2. Write your Yuda's Assembly code in the editor.
3. Click the "Run" button to execute the code.
4. View the output and any error messages in the console.

## Acknowledgements

This project uses the [Monaco Editor](https://github.com/Microsoft/monaco-editor) for the code editor.

This project also uses the [XTERM.js](https://xtermjs.org) project for the terminal. 

## License

This project is licensed under the [MIT License](../LICENSE).
