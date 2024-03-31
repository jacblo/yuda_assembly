#libraries
from flask import Flask, render_template
import rocher

monaco_html = rocher.editor_html(
    "static/vs",
    "editor",
    "python",
    "print('Hello World!')",
)

# simulator
from .yuda_asm_simulator import *

app = Flask(__name__)

@app.route("/")
def main():
    return render_template("main_template.html", monaco_html = monaco_html)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000, debug=True)