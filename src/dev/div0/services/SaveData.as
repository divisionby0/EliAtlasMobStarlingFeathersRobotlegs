/**
 * Created by ilay on 20.09.2015.
 */
package dev.div0.services {
import dev.div0.model.SaveAppData;

public class SaveData {
    public function SaveData(data:String) {

        // Crimea is blocked. 403 error
        // Крым заблокирован, а терять время на настройку VPN на роутере не хотелось бы, будем считать что данные уходят туда
        var savedData:SaveAppData = new SaveAppData(data);
        savedData.id = 'saved_data';
        savedData.saveQueued();
    }
}
}
