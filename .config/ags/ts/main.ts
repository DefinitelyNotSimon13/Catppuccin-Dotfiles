import { testElements2 } from './testMenu/testElements'
import { MainDropdownBox } from './mainDropdown/mainDropdown'


const TestBar = (monitor = 0) => Widget.Window({
  monitor: monitor,
  name: `bar${monitor}`,
  anchor: ['top', 'right'],
  child: testElements2(),
})

const MainDropdown = (monitor = 0) => Widget.Window({
  monitor: monitor,
  name: `dropdown${monitor}`,
  anchor: ['top', 'right'],
  child: MainDropdownBox(),
})

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

export default {
  windows: [
    TestBar(1),
    MainDropdown(0),
  ],
}
