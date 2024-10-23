import NavigationDemo from '../views/Nav/Navigation';
import ColumnDemo from '../views/RCS/Column';
import FlexDemo from '../views/RCS/Flex';
import RelativeContainerDemo from '../views/RCS/RelativeContainer';
import StackDemo from '../views/RCS/Stack';
import ListDemo from '../views/RollScroll/List';
import ScrollDemo from '../views/RollScroll/Scroll';
import SwiperDemo from '../views/RollScroll/Swiper';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      NavigationDemo()
    }
    .width("100%")
    .height("100%")
  }
}