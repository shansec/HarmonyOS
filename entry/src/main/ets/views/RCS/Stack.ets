@Component
export default struct StackDemo {
  build() {
    /**
     * option
     *  alignContent: 设置子组件在容器内的对齐方式
     */
    Stack({ alignContent: Alignment.TopEnd }) {
      Text('First child, show in bottom').width('90%').height('100%').backgroundColor(0xd2cab3).align(Alignment.Top)
      Text('Second child, show in top').width('70%').height('60%').backgroundColor(0xc1cbac).align(Alignment.Top)
    }.width('100%').height(150).margin({ top: 5 })
  }
}