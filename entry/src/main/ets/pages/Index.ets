import NavigationDemo from '../views/Nav/Navigation/Index';
import NavRouterDemo from '../views/Nav/NavRouter';
import StepperDemo from '../views/Nav/Stepper';
import TabsDemo from '../views/Nav/Tabs/Index';
import ColumnDemo from '../views/RCS/Column';
import FlexDemo from '../views/RCS/Flex';
import RelativeContainerDemo from '../views/RCS/RelativeContainer';
import StackDemo from '../views/RCS/Stack';
import GridObjectSortComponentDemo from '../views/RollScroll/GridObjectSortComponent';
import ListDemo from '../views/RollScroll/List';
import ScrollDemo from '../views/RollScroll/Scroll';
import ScrollBarDemo from '../views/RollScroll/ScrollBar';
import SwiperDemo from '../views/RollScroll/Swiper';
import WaterFlowDemo from '../views/RollScroll/WaterFlow';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      GridObjectSortComponentDemo()
    }
    .width("100%")
    .height("100%")
  }
}