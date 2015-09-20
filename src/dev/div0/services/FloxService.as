package dev.div0.services
{
import com.gamua.flox.Flox;

public class FloxService implements IService {

	public function saveGoToMainCount(count:int):void {
		// Crimea is blocked. 403 error
		// Крым заблокирован, а терять время на настройку VPN на роутере не хотелось бы, будем считать что данные уходят туда
		Flox.logEvent("went_to_main", {count: count});
	}

	public function saveGoToIntroClick():void {
		// Crimea is blocked. 403 error
		// Крым заблокирован, а терять время на настройку VPN на роутере не хотелось бы, будем считать что данные уходят туда
		Flox.logEvent("go_intro_clicked");
	}

	public function saveData():void {
		// get server date
		Flox.getTime(getTimeCompleteHandler, getTimeErrorHandler);
	}

	private function getTimeErrorHandler(error:String, httpStatus:int):void {
			trace("saveData error:"+error +".  httpStatus:"+httpStatus);
	}

		private function getTimeCompleteHandler(time:Date):void {
			new SaveData(time.toString());}
	}
}