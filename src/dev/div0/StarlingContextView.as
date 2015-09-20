/**
 * Created by ilay on 19.09.2015.
 */
package dev.div0 {

import starling.display.Sprite;
import starling.events.Event;

public class StarlingContextView extends Sprite
{
    public function StarlingContextView() {
        super();
        addEventListener(Event.ADDED_TO_STAGE, initHandler );
    }

    private function initHandler(event:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE, initHandler );
    }
}
}
