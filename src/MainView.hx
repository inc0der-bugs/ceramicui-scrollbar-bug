package;

import haxe.ui.events.MouseEvent;
import haxe.ui.components.Button;
import haxe.ui.containers.menus.MenuItem;
import haxe.ui.containers.VBox;

@:build(haxe.ui.ComponentBuilder.build('../../assets/main-view.xml'))
class MainView extends VBox {
  public var button: Button;
  public var widthOnClick: Float;
  public function new() {
    super();
    registerEvent(MouseEvent.MOUSE_DOWN, onScrollbarPressed);
  }


  public function onScrollbarPressed(e: MouseEvent) {
    button = scrollbar.findComponent("scroll-thumb-button");
    widthOnClick = button.componentWidth;
    trace(widthOnClick);
    // trace(button.width, button.componentWidth, button.percentWidth);
    var hit = button.hitTest(e.screenX, e.screenY);
    trace(hit);
    // trace(@:privateAccess button._actualWidth);
  }

  public function update(dt) {
    // if (button != null) {
    //   if (button.componentWidth != widthOnClick) {
    //     trace(button.componentWidth);
    //   }
    // }
  }
}
