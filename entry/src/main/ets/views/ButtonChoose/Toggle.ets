@Component
export default struct ToggleDemo {
  @State variable: boolean = false

  build() {
    Column() {
      Toggle({
        type: ToggleType.Switch,
        isOn: $$this.variable
      })
        .selectedColor(Color.Red)

      Button('open/off')
        .onClick(() => {
          this.variable = !this.variable
        })
    }
  }
}