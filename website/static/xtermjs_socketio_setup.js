Terminal.applyAddon(fit)
Terminal.applyAddon(webLinks)
Terminal.applyAddon(search)
const term = new Terminal({
    cursorBlink: 5,
    macOptionIsMeta: true,
    scrollback: 300,
});
term.open(document.getElementById('output_viewer'));
term.fit()
term.resize(15, 50)
console.log(`size: ${term.cols} columns, ${term.rows} rows`)
// term.toggleFullScreen(true)
term.fit()
term.write("Work in progress, Hello World!\r\n")
term.on('key', (key, ev) => {
    console.log("pressed key", key)
    console.log("event", ev)
    socket.emit("pty-input", {
        "input": key
    }, function (response) {
        console.log(response);
    });
});

const socket = io.connect('/emulated');
socket.on('connect', function() {
    socket.emit('my event', {data: "I'm connected!"});
});

const status_element = document.getElementById("status")

socket.on("pty-output", function (data) {
    console.log("new output", data)
    term.write(data.output)
})

socket.on("connect", () => {
    fitToscreen()
    status_element.innerHTML = '<span style="background-color: lightgreen;">connected</span>'
})

socket.on("disconnect", () => {
    status_element.innerHTML = '<span style="background-color: #ff8383;">disconnected</span>'
})

function fitToscreen() {
    term.fit()
    socket.emit("resize", {
        "cols": term.cols,
        "rows": term.rows
    })
}

function debounce(func, wait_ms) {
    let timeout
    return function (...args) {
        const context = this
        clearTimeout(timeout)
        timeout = setTimeout(() => func.apply(context, args), wait_ms)
    }
}

const wait_ms = 50;
window.onresize = debounce(fitToscreen, wait_ms)