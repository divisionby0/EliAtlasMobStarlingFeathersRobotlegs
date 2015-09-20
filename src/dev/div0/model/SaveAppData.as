/**
 * Created by ilay on 20.09.2015.
 */
package dev.div0.model {
import com.gamua.flox.Entity;

public class SaveAppData extends Entity{
    private var _savedData:String;

    public function SaveAppData(savedData:String) {
        _savedData = _savedData;
    }

    public function get savedData():String {
        return _savedData;
    }

    public function set savedData(value:String):void {
        _savedData = value;
    }
}
}
