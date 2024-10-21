@Component
export default struct SwiperDemo {
  swiperController: SwiperController = new SwiperController()
  swiperList: string[] = ['1', '2', '3', '4', '5', '6']

  build() {
    Swiper(this.swiperController) {
      ForEach(this.swiperList, (swiper: string, index: number) => {
        Text(swiper)
          .height("100%")
          .width("100%")
          .textAlign(TextAlign.Center)
          .backgroundColor(`#d${index + 1}f${index}f6`)
      }, (item: string) => item)
    }
    .width("100%")
    .height(300)
    .index(2)
    .autoPlay(true)
  }
}