import testElements from './testMenu/testElements'


const Bar = (monitor = 0) => Widget.Window({
  monitor: monitor,
  name: `bar${monitor}`,
  anchor: ['top', 'right'],
  child: testElements(),
})

export default {
  windows: [
    Bar(0),
  ],
}
