const network = await Service.import('network')


const HelloWorld = Widget.Label({
  label: 'Hello World'
})

const NetworkIndicator = () => Widget.Label({
  label: network.bind('primary').as(primary => primary || 'Test'),
})


const NetworkToggle = () => Widget.Button({
  child: Widget.Label('Toggle Network'),
  onPrimaryClick: () => {
  },
})


export const MainDropdownBox = () => Widget.Box({
  vertical: true,
  children: [
    HelloWorld,
    NetworkIndicator(),
    NetworkToggle(),
  ]
})


