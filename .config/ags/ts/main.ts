Utils.monitorFile(
    // directory that contains the scss files
    `${App.configDir}/style`,

    // reload function
    function() {
        // main scss file
        const scss = `${App.configDir}/style/style.scss`

        // target css file
        const css = `/tmp/ags/style.css`

        // compile, reset, apply
        Utils.exec(`sassc ${scss} ${css}`)
        App.resetCss()
        App.applyCss(css)
    },
)
const pactl = Variable({ count: 0, msg: '' }, {
    listen: ['pactl subscribe', (msg) => ({
        count: pactl.value.count + 1,
        msg: msg,
    })],
})

pactl.connect('changed', ({ value }) => {
    print(value.msg, value.count)
})

const label = Widget.Label({
    label: pactl.bind().as(({ count, msg }) => {
        return `${msg} ${count}`
    }),
})

// widgets are GObjects too
label.connect('notify::label', ({ label }) => {
    print('label changed to ', label)
})

const date = Variable('', {
    poll: [1000, 'date'],
})

const Bar = (monitor = 0) => Widget.Window({
    name: `bar${monitor}`,
    anchor: ['top', 'right'],
    child: Widget.Label({ label: date.bind() })
})

export default {
  windows: [
    Bar(0),
    Bar(1),
  ],
}
