This is a cli to communicate with the hardware or simulation of the yuda-assembly processor.
for documentation use the 'docs' command from the client.

# Usage
from the parent yuda_assembly directory run `python -m cli.server`
that's the server

from the parent yuda_assembly directory run `python -m cli.client`
that's the client.

# Limitations
this doesn't yet always handle errors correctly... so for example giving not a number to the hardware is caught but not in simulation. this will be fixed of course
