# yuda_assembly

This project is a web-based assembly language interpreter for Yuda's Assembly. It allows you to write and run Yuda's Assembly code directly in your browser.

## Getting Started

To get started with yuda_assembly, follow these steps:

1. Clone the repository
2. Navigate to the project directory: `cd yuda_assembly`
3. Install the dependencies: `pipenv install -r requirements.txt`
4. Start the development server: `flask run --app website --port XXXX`

## Features

- Syntax highlighting for Yuda's Assembly code
- Real-time code execution
- Error handling and debugging support

## Usage

1. Open your web browser and navigate to `http://localhost:XXXX`.
2. Write your Yuda's Assembly code in the editor.
3. Click the "Run" button to execute the code.
4. View the output and any error messages in the console.

## Acknowledgements

This project uses the [Monaco Editor](https://github.com/Microsoft/monaco-editor) for the code editor. The static/vs directory in this repository is a copy of the Monaco Editor.

## License

This project is licensed under the [MIT License](LICENSE).