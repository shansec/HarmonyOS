import { SymbolGlyphModifier } from "@kit.ArkUI"
import TabBarPage1 from "./component/TabBarPage1";
import TabBarPage2 from "./component/TabBarPage2";
import TabBarPage3 from "./component/TabBarPage3";
import TabBarPage4 from "./component/TabBarPage4";

@Component
export default struct HuaweiMotion {
  @Provide('pagesInfo') pagesInfo: NavPathStack = new NavPathStack();
  @State curIndex: number = 1;

  tabBarList: Array<ToolbarItem> = [
    {
      value: $r('app.string.Huawei_tabBar_txt1'),
      symbolIcon: new SymbolGlyphModifier($r('sys.symbol.calendar_1')),
      activeSymbolIcon: new SymbolGlyphModifier($r('sys.symbol.calendar_01')),
      status: this.curIndex == 1 ? ToolbarItemStatus.ACTIVE : ToolbarItemStatus.NORMAL,
      action: () => {
        this.curIndex = 1
      }
    },
    {
      value: $r('app.string.Huawei_tabBar_txt2'),
      symbolIcon: new SymbolGlyphModifier($r('sys.symbol.motion_stabilization')),
      activeSymbolIcon: new SymbolGlyphModifier($r('sys.symbol.motion_stabilization_slash')),
      status: this.curIndex == 2 ? ToolbarItemStatus.ACTIVE : ToolbarItemStatus.NORMAL,
      action: () => {
        this.curIndex = 2
      }
    },
    {
      value: $r('app.string.Huawei_tabBar_txt3'),
      symbolIcon: new SymbolGlyphModifier($r('sys.symbol.device_band')),
      activeSymbolIcon: new SymbolGlyphModifier($r('sys.symbol.device_2')),
      status: this.curIndex == 3 ? ToolbarItemStatus.ACTIVE : ToolbarItemStatus.NORMAL,
      action: () => {
        this.curIndex = 3
      }
    },
    {
      value: $r('app.string.Huawei_tabBar_txt4'),
      symbolIcon: new SymbolGlyphModifier($r('sys.symbol.device_2')),
      activeSymbolIcon: new SymbolGlyphModifier($r('sys.symbol.device_2')),
      status: this.curIndex == 4 ? ToolbarItemStatus.ACTIVE : ToolbarItemStatus.NORMAL,
      action: () => {
        this.curIndex = 4
      }
    },
  ]

  // CustomBuilder类型的toolbar
  @Builder
  NavigationToolbar() {
    Row() {
      Column() {
        Image($r('app.media.today'))
          .size({ width: 20, height: 20 })
          .fillColor(this.curIndex == 1 ? '#2c2c2c' : '#909090')
          .margin({
            bottom: 5
          })
        Text($r('app.string.Huawei_tabBar_txt1'))
          .fontSize(12)
          .fontColor(this.curIndex == 1 ? "#2c2c2c" : "#909090")
      }
      .alignItems(HorizontalAlign.Center)
      .justifyContent(FlexAlign.Center)
      .height('100%')
      .layoutWeight(1)
      .onClick(() => {
        this.curIndex = 1;
      })

      Column() {
        Image($r('app.media.motion'))
          .size({ width: 20, height: 20 })
          .fillColor(this.curIndex == 2 ? '#2c2c2c' : '#909090')
          .margin({
            bottom: 5
          })
        Text($r('app.string.Huawei_tabBar_txt2'))
          .fontSize(12)
          .fontColor(this.curIndex == 2 ? "#2c2c2c" : "#909090")
      }
      .alignItems(HorizontalAlign.Center)
      .justifyContent(FlexAlign.Center)
      .height('100%')
      .layoutWeight(1)
      .onClick(() => {
        this.curIndex = 2;
      })

      Column() {
        Image($r('app.media.watch'))
          .size({ width: 20, height: 20 })
          .fillColor(this.curIndex == 3 ? '#2c2c2c' : '#909090')
          .margin({
            bottom: 5
          })
        Text($r('app.string.Huawei_tabBar_txt3'))
          .fontSize(12)
          .fontColor(this.curIndex == 3 ? "#2c2c2c" : "#909090")
      }
      .alignItems(HorizontalAlign.Center)
      .justifyContent(FlexAlign.Center)
      .height('100%')
      .layoutWeight(1)
      .onClick(() => {
        this.curIndex = 3;
      })

      Column() {
        Image($r('app.media.mine'))
          .size({ width: 20, height: 20 })
          .fillColor(this.curIndex == 4 ? '#2c2c2c' : '#909090')
          .margin({
            bottom: 5
          })
        Text($r('app.string.Huawei_tabBar_txt4'))
          .fontSize(12)
          .fontColor(this.curIndex == 4 ? "#2c2c2c" : "#909090")
      }
      .alignItems(HorizontalAlign.Center)
      .justifyContent(FlexAlign.Center)
      .height('100%')
      .layoutWeight(1)
      .onClick(() => {
        this.curIndex = 4;
      })
    }
    .width('100%')
    .height(50)
    .alignItems(VerticalAlign.Center)
  }

  build() {
    Navigation(this.pagesInfo) {
      if (this.curIndex == 1) {
        TabBarPage1()
      } else if (this.curIndex == 2) {
        TabBarPage2()
      } else if (this.curIndex == 3) {
        TabBarPage3()
      } else {
        TabBarPage4()
      }
    }
    .toolbarConfiguration(this.NavigationToolbar(), { backgroundColor: '#fff', backgroundBlurStyle: BlurStyle.Regular })
    .hideBackButton(true)
  }
}