#libraries
from flask import Flask, render_template
import rocher.flask

# simulator
from .yuda_asm_simulator import *

app = Flask(__name__)

# Register the editor with the Flask app
# and expose the rocher_editor function to Jinja templates
rocher.flask.editor_register(app)

@app.route("/")
def main():
    return render_template("main_template.html", source_code="print('test')")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000, debug=True)