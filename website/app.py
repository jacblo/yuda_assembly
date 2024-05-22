#libraries
from flask import Flask, render_template, request
import rocher.flask # for monaco editor
import os
from flask_socketio import SocketIO, disconnect, rooms
import pty

# simulator
# from .yuda_asm_simulator import *

app = Flask(__name__)

#           SOCKET IO
socketio = SocketIO(app)

@socketio.on("connect", namespace="/emulated")
def pty_connect_emulated():
    print('socket connected!', request.sid)

@socketio.on("disconnect", namespace="/emulated")
def pty_disconnect_emulated():
    print('socket disconnected :( ', request.sid)

@socketio.on('disconnect', namespace='/emulated')
def pty_disconnect():
    pass


#           MONACO EDITOR 
# Register monaco editor with the Flask app
# and expose the rocher_editor function to Jinja templates
rocher.flask.editor_register(app)

@app.route("/")
def main():
    sample_filepath = os.path.join(os.path.dirname(__file__),'example_files/example1.yuda_asm')
    with open(sample_filepath, 'r') as f:
        source_code = f.read()
        
    return render_template("main_template.html", source_code=source_code)

if __name__ == "__main__":
    socketio.run(app, host="0.0.0.0", port=8000)