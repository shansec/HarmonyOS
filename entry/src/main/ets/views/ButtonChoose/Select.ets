import { SymbolGlyphModifier } from "@kit.ArkUI"

@Component
export default struct SelectDemo {
  @State SelectList: SelectOption[] = [
    {
      value: '选项一',
      symbolIcon: new SymbolGlyphModifier($r('sys.symbol.camera_iso'))
    }
  ]

  build() {
    Select(this.SelectList)
      .value('已选中')
  }
}