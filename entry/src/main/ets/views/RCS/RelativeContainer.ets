@Component
export default struct RelativeContainerDemo {
  build() {
    // RelativeContainer() {
    //   Row(){
    //     Text('row1')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .width(100)
    //   .height(100)
    //   .backgroundColor("#FF3333")
    //   .alignRules({
    //     top: {anchor: "__container__", align: VerticalAlign.Top},
    //     left: {anchor: "__container__", align: HorizontalAlign.Start}
    //   })
    //   .id("row1")
    //
    //   Row(){
    //     Text('row2')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .width(100)
    //   .height(100)
    //   .backgroundColor("#FFCC00")
    //   .alignRules({
    //     top: {anchor: "__container__", align: VerticalAlign.Top},
    //     right: {anchor: "__container__", align: HorizontalAlign.End}
    //   })
    //   .id("row2")
    //
    //   Row(){
    //     Text('row3')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .height(100)
    //   .backgroundColor("#FF6633")
    //   .alignRules({
    //     top: {anchor: "row1", align: VerticalAlign.Bottom},
    //     left: {anchor: "row1", align: HorizontalAlign.End},
    //     right: {anchor: "row2", align: HorizontalAlign.Start}
    //   })
    //   .id("row3")
    //
    //   Row(){
    //     Text('row4')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .backgroundColor("#FF9966")
    //   .alignRules({
    //     top: {anchor: "row3", align: VerticalAlign.Bottom},
    //     bottom: {anchor: "__container__", align: VerticalAlign.Bottom},
    //     left: {anchor: "__container__", align: HorizontalAlign.Start},
    //     right: {anchor: "row1", align: HorizontalAlign.End}
    //   })
    //   .id("row4")
    //
    //   Row(){
    //     Text('row5')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .backgroundColor("#FF66FF")
    //   .alignRules({
    //     top: {anchor: "row3", align: VerticalAlign.Bottom},
    //     bottom: {anchor: "__container__", align: VerticalAlign.Bottom},
    //     left: {anchor: "row2", align: HorizontalAlign.Start},
    //     right: {anchor: "__container__", align: HorizontalAlign.End}
    //   })
    //   .id("row5")
    // }
    // .width(300).height(300)
    // .margin({left: 50})
    // .border({width:2, color: "#6699FF"})

    // RelativeContainer() {
    //   Row(){
    //     Text('row1')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .width(100)
    //   .height(100)
    //   .backgroundColor("#FF3333")
    //   .alignRules({
    //     top: {anchor: "__container__", align: VerticalAlign.Top},
    //     left: {anchor: "__container__", align: HorizontalAlign.Start}
    //   })
    //   .id("row1")
    //   .margin(10)
    //
    //   Row(){
    //     Text('row2')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .width(100)
    //   .height(100)
    //   .backgroundColor("#FFCC00")
    //   .alignRules({
    //     left: {anchor: "row1", align: HorizontalAlign.End},
    //     top: {anchor: "row1", align: VerticalAlign.Top}
    //   })
    //   .id("row2")
    //
    //   Row(){
    //     Text('row3')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .width(100)
    //   .height(100)
    //   .backgroundColor("#FF6633")
    //   .alignRules({
    //     left: {anchor: "row1", align: HorizontalAlign.Start},
    //     top: {anchor: "row1", align: VerticalAlign.Bottom}
    //   })
    //   .id("row3")
    //
    //   Row(){
    //     Text('row4')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .width(100)
    //   .height(100)
    //   .backgroundColor("#FF9966")
    //   .alignRules({
    //     left: {anchor: "row3", align: HorizontalAlign.End},
    //     top: {anchor: "row2", align: VerticalAlign.Bottom}
    //   })
    //   .id("row4")
    //   .margin(10)
    // }
    // .width(300).height(300)
    // .margin({left: 50})
    // .border({width:2, color: "#6699FF"})

    // RelativeContainer() {
    //   Row(){
    //     Text('row1')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .width(100)
    //   .height(100)
    //   .backgroundColor("#FF3333")
    //   .id("row1")
    //
    //   Row(){
    //     Text('row2')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .width(100)
    //   .height(100)
    //   .backgroundColor("#FFCC00")
    //   .alignRules({
    //     left: {anchor: "row1", align: HorizontalAlign.End},
    //     top: {anchor: "row1", align: VerticalAlign.Top}
    //   })
    //   .id("row2")
    //
    //   Row(){
    //     Text('row3')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .width(100)
    //   .height(100)
    //   .backgroundColor("#FF6633")
    //   .alignRules({
    //     left: {anchor: "row1", align: HorizontalAlign.Start},
    //     top: {anchor: "row1", align: VerticalAlign.Bottom}
    //   })
    //   .id("row3")
    //
    //   Row(){
    //     Text('row4')
    //   }
    //   .justifyContent(FlexAlign.Center)
    //   .width(100)
    //   .height(100)
    //   .backgroundColor("#FF9966")
    //   .alignRules({
    //     left: {anchor: "row3", align: HorizontalAlign.End},
    //     top: {anchor: "row2", align: VerticalAlign.Bottom}
    //   })
    //   .id("row4")
    // }
    // .width("auto").height("auto")
    // .margin({left: 50})
    // .border({width:2, color: "#6699FF"})

    RelativeContainer() {
      Row()
        .width(100)
        .height(100)
        .backgroundColor("#FF3333")
        .alignRules({
          top: {anchor: "__container__", align: VerticalAlign.Top},
          bottom : {anchor : "__container__", align : VerticalAlign.Bottom},
          left: {anchor: "__container__", align: HorizontalAlign.Start},
          right : {anchor : "__container__", align: HorizontalAlign.End},
          bias : {vertical : 0}
        })
        .id("row1")
    }
    .width(300).height(300)
    .margin({left: 50})
    .border({width:2, color: "#6699FF"})
  }
}