/**
 * Created by ilay on 20.09.2015.
 */
package dev.div0.services {
public class FakeService implements IService{

    public function saveGoToMainCount(count:int):void {
        trace("saveGoToMainCount");
    }

    public function saveGoToIntroClick():void {
        trace("saveGoToIntroClick");
    }

    public function saveData():void {
        trace("saveData");
    }
}
}
