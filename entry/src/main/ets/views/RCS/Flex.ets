import { LengthMetrics } from "@kit.ArkUI"

@Component
export default struct FlexDemo {
  build() {
    /**
     * flexOptions
     *  direction: 排列方向
     *  wrap: 单行排列还是多行
     *  justifyContent: 在主轴上的对齐方式
     *  alignItems: 在交叉轴（副轴）上对齐方式
     *  alignContent: 叉轴中有额外的空间时，多行内容的对齐方式
     *  space: 所有子组件在Flex容器主轴或交叉轴的space
     */
    Flex({
      direction: FlexDirection.Row,
      wrap: FlexWrap.NoWrap,
      justifyContent: FlexAlign.SpaceAround,
      alignItems: ItemAlign.Center,
    }){
      Text('1').width('20%').height(50).lineHeight(50).textAlign(TextAlign.Center).backgroundColor(0xF5DEB3)
      Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
      Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
      Text('4').width('20%').height(50).backgroundColor(0xD2B48C)
    }
    .width("100%")
    .height("100%")
  }
}