/**
 * Created by ilay on 20.09.2015.
 */
package dev.div0.commands {
import dev.div0.services.FloxService;

import robotlegs.bender.bundles.mvcs.Command;

public class SaveDataCommand extends Command{
    [Inject]
    public var service:FloxService;

    override public function execute():void{
        if(service){
            service.saveData();
        }
        else{
            trace("Service is NULL");
        }
    }
}
}
