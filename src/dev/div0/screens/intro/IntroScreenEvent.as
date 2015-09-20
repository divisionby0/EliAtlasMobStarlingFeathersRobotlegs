/**
 * Created by ilay on 20.09.2015.
 */
package dev.div0.screens.intro {
import starling.events.Event;

public class IntroScreenEvent extends Event
{
    public static const TO_MAIN_SCREEN_CLICK:String = "toMainScreenClick";

    public function IntroScreenEvent(type:String, bubbles:Boolean=false, data:Object=null) {
        super(type,bubbles,data);
    }
}
}
