This is a cli to communicate with the hardware or simulation of the yuda-assembly processor.

for documentation and explanations use the 'docs' command from the client.

# Usage
from the parent yuda_assembly directory run `python -m cli.server`
if you don't have connected hardware or don't want to use hardware, run `python -m cli.server --no-hardware` instead.
if you don't want to be prompted to select a port, add the `--port <port>`.
if the simulations are hanging processing of new clients or simply you want to use multiple cores, add the `--multiprocessing` flag.
that's the server

from the parent yuda_assembly directory run `python -m cli.client`
that's the client.