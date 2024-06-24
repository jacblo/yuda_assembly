This is a cli to communicate with the hardware or simulation of the yuda-assembly processor.

for documentation and explanations use the 'docs' command from the client.

# Usage
from the parent yuda_assembly directory run `python -m cli.server`
if you don't have connected hardware or don't want to use hardware, run `python -m cli.server --no-hardware` instead.
that's the server

from the parent yuda_assembly directory run `python -m cli.client`
that's the client.