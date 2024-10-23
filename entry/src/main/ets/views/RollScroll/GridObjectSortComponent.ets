import { GridObjectSortComponent, GridObjectSortComponentItem,
  GridObjectSortComponentOptions,
  GridObjectSortComponentType } from "@kit.ArkUI"

@Component
export default struct GridObjectSortComponentDemo {
  @State dataList: GridObjectSortComponentItem[] = [
    {
      id: 0,
      url: $r('app.media.startIcon'),
      text: '位置信息',
      selected: true,
      order: 3
    },
    {
      id: 1,
      url: $r('app.media.startIcon'),
      text: '移动数据',
      selected: true,
      order: 9
    },
    {
      id: 2,
      url: $r('app.media.startIcon'),
      text: 'NFC',
      selected: false,
      order: 1
    },
    {
      id: 3,
      url: $r('app.media.startIcon'),
      text: '响铃关闭',
      selected: true,
      order: 4
    },
    {
      id: 4,
      url: $r('app.media.startIcon'),
      text: '响铃',
      selected: false,
      order: 5
    },
    {
      id: 5,
      url: $r('app.media.startIcon'),
      text: '低电量模式',
      selected: true,
      order: 6
    },
    {
      id: 6,
      url: $r('app.media.startIcon'),
      text: '截屏',
      selected: true,
      order: 7
    },
    {
      id: 7,
      url: $r('app.media.startIcon'),
      text: '屏幕录制',
      selected: true,
      order: 8
    },
    {
      id: 8,
      url: $r('app.media.startIcon'),
      text: '超级省电',
      selected: false,
      order: 9
    },
  ]

  @State option: GridObjectSortComponentOptions = {
    type: GridObjectSortComponentType.IMAGE_TEXT,
    imageSize: 45,
    normalTitle: '菜单',
    editTitle: '编辑',
    showAreaTitle: '长按拖动排序',
    addAreaTitle: '点击添加'
  }

  build() {
    Column() {
      GridObjectSortComponent({
        options: this.option,
        dataList: this.dataList,
        onSave: (
          select: Array<GridObjectSortComponentItem>,
          unselect: Array<GridObjectSortComponentItem>
        ) => {
          // save ToDo
          console.log('select', JSON.stringify(select))
          console.log('unselect', JSON.stringify(unselect))
        },
        onCancel: () =>{
          // cancel ToDo
        }
      })
    }
  }
}