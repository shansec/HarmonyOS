import ButtonDemo from '../views/ButtonChoose/Button';
import ToggleDemo from '../views/ButtonChoose/Toggle';
import HuaweiMotion from '../views/Nav/Navigation/HuaweiMotion/HuaweiMotion';
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
import PersistentStorageDemo from '../views/State/PersistentStorage/PersisterStorageDemo';

@Entry
@Component
struct Index {

  build() {
    Column() {
      ToggleDemo()
    }
    .width("100%")
    .height("100%")
  }
}