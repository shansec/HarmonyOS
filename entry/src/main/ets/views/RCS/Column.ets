@Component
export default struct ColumnDemo {
  build() {
    /**
     * option
     *  space: 纵向布局元素垂直方向间距
     */
    Column({space: 5}) {
      Text('1').height(200).width("80%").backgroundColor(0xF1f1f1)
      Text('2').height(200).width("80%").backgroundColor(0xa1f1f1)
      Text('3').height(200).width("80%").backgroundColor(0xc1f1f1)
      Text('4').height(200).width("80%").backgroundColor(0x11f1f1)
    }
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
  }
}