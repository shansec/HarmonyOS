@Builder
function NavigateDemoBuilder() {
  NavigateDemo()
}

@Entry
@Component
struct NavigateDemo {
  build() {
    Column() {
      Text('1').fontColor(0xf1f1f1)
    }
  }
}