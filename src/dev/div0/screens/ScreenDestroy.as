/**
 * Created by ilay on 20.09.2015.
 */
package dev.div0.screens {
import dev.div0.StarlingContextView;

public class ScreenDestroy {
    public function ScreenDestroy(starlingContextView:StarlingContextView) {
        try{
            var currentScreen:IDestroyable  = IDestroyable(starlingContextView.getChildAt(0));
            if(currentScreen){
                currentScreen.destroy();
            }
            else{
                trace("currentScreen is NULL");
            }
            starlingContextView.removeChildAt(0);
        }
        catch(error:Error){
            // it can be application first run - nothing to remove
        }
    }
}
}
