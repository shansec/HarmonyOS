@Component
export default struct ScrollDemo {
  list: Array<number> = [1, 2, 3, 4, 5, 6, 7, 8]
  scroll: Scroller = new Scroller()
  build() {
    RelativeContainer() {
      Scroll(this.scroll) {
        List() {
          ForEach(this.list, (item: number) => {
            ListItem() {
              Text(item.toString()).fontSize(30).width("80%").height(200).borderRadius(20).margin({bottom: 20}).backgroundColor(0xd1f2f3)
            }
          }, (item: number) => item.toString())
        }
        .width("100%")
        .alignListItem(ListItemAlign.Center)
      }
      .width("100%")
      .scrollBarColor('#999')
      .scrollBarWidth(10)

      Button('edit scroll')
        .onClick(() => {

        })
        .alignRules({
          top: {anchor: "__container__", align: VerticalAlign.Top},
          left: {anchor: "__container__", align: HorizontalAlign.Start},
        })
    }
  }
}