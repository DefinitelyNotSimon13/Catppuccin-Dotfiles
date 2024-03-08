const network = await Service.import('network')

export const date = Variable('', {
poll: [1000, 'date'],
})

export const button = Widget.Button({
  child: Widget.Label('click me!'),
  onPrimaryClick: () => Utils.exec('notify-send "Hello World"'),
})

export const dateLabel = Widget.Label({
  label: date.bind(),
})

export const testLabel = (monitor = 0) => Widget.Label({
  label: `monitor ${monitor}`
})

export const testLabel2 = Widget.Label({
  label: network.wired.bind('state')
})

export const testSlider = Widget.Slider({
  min: 0,
  max: 100,

})

export const button2 = Widget.Button({
    child: Widget.Label('click to open menu'),
    onPrimaryClick: (_, event) => Widget.Menu({
        children: [
            Widget.MenuItem({
                child: Widget.Label('hello'),
            }),
        ],
    }).popup_at_pointer(event),
})

const horizontalBox1 = Widget.Box({
  children: [
    dateLabel,
    testLabel2,
    button2,
  ],
})

const horizontalBox2 = Widget.Box({
  children: [
    testLabel(0),
    button,
    testSlider,
  ],
})


export default () => Widget.Box({
  vertical: true,
  children: [
    horizontalBox1,
    horizontalBox2,
  ],
})

export const testElements2 = () => Widget.Box({
  vertical: true,
  children: [
    horizontalBox1,
    horizontalBox2,
  ],
})
