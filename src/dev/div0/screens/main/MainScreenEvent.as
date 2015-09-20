/**
 * Created by ilay on 20.09.2015.
 */
package dev.div0.screens.main {
import starling.events.Event;

public class MainScreenEvent extends Event{

    public static const TO_INTRO_SCREEN_CLICK:String = "toIntroScreenClick";
    public static const SAVE_DATA_CLICK:String = "saveDataClick";

    public function MainScreenEvent(type:String, bubbles:Boolean=false, data:Object=null) {
        super(type,bubbles,data);
    }
}
}
