const myLabel = Widget.Label({
    label: 'some example content',
})

const myBar = Widget.Window({
    name: 'bar',
    anchor: ['top', 'right'],
    child: myLabel,
})

export default { windows: [myBar] }
