@Component
export default struct ListDemo {
  itemList: Array<string> = ['1', '2', '3', '4', '5', '6', '7', '8', '9']

  @State arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  @State editFlag: boolean = false

  build() {
    // Column() {
    //   /**
    //    * option
    //    *  space: 子组件主轴方向的间隔
    //    *  initialIndex: 设置当前List初次加载时视口起始位置显示的item的索引值
    //    *  scroller: 可滚动组件的控制器。用于与可滚动组件进行绑定
    //    */
    //   List({
    //     space: 10,
    //     initialIndex: 5
    //   }) {
    //     ForEach(this.itemList, (item: string) => {
    //       ListItem() {
    //         Text(item).width("100%").height("100%").textAlign(TextAlign.Center)
    //       }
    //       .width("90%")
    //       .height(200)
    //       .backgroundColor(0xd1f2f3)
    //       .borderRadius(12)
    //     }, (item: string) => item)
    //   }
    //   .width("100%")
    //   .alignListItem(ListItemAlign.Center)
    //   .listDirection(Axis.Vertical) // List组件的排列方向
    //   .scrollBar(BarState.Off)      // 滚动条的状态
    //   .editMode(true)              // 设置当前List组件是否处于可编辑模式
    //   .edgeEffect(EdgeEffect.Spring)  // 设置边缘滑动效果
    //   .chainAnimation(true)
    //   .lanes(1, 10)                 // 设置List组件的布局列数或行数
    //   .friction(0.9)
    //   .contentStartOffset(20)
    //   .onScrollIndex(event => {
    //     console.log(event.toString())
    //   })
    // }
    // .width("100%")
    // .alignItems(HorizontalAlign.Center)

    Stack({ alignContent: Alignment.TopStart }) {
      Column() {
        List({ space: 20, initialIndex: 0 }) {
          ForEach(this.arr, (item: number, index?: number) => {
            ListItem() {
              Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.Center }) {
                Text('' + item)
                  .width('100%')
                  .height(80)
                  .fontSize(20)
                  .textAlign(TextAlign.Center)
                  .borderRadius(10)
                  .backgroundColor(0xFFFFFF)
                  .flexShrink(1)
                if (this.editFlag) {
                  Button() {
                    Text("delete").fontSize(16)
                  }.width('30%').height(40)
                  .onClick(() => {
                    if (index != undefined) {
                      console.info(this.arr[index] + 'Delete')
                      this.arr.splice(index, 1)
                      console.info(JSON.stringify(this.arr))
                      this.editFlag = false
                    }
                  }).stateEffect(true)
                }
              }
            }
          }, (item: string) => item)
        }.width('90%')
        .scrollBar(BarState.Off)
        .friction(0.6)
      }.width('100%')

      Button('edit list')
        .onClick(() => {
          this.editFlag = !this.editFlag
        }).margin({ top: 5, left: 20 })
    }.width('100%').height('100%').backgroundColor(0xDCDCDC).padding({ top: 5 })
  }
}