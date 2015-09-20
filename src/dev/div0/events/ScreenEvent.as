package dev.div0.events
{
import flash.events.Event;

public class ScreenEvent extends Event
	{
		public static const TO_MAIN_SCREEN_REQUEST:String = "toScreen2Request";
		public static const TO_INTRO_SCREEN_REQUEST:String = "toScreen1Request";
		public static const SAVE_DATA_REQUEST:String = "saveDataRequest";
		
		public function ScreenEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}