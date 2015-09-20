package dev.div0.events
{
	import flash.events.Event;
	
	public class ConfigEvent extends Event
	{
		public static const CONFIG_INIT_COMPLETE:String = "configInitComplete";
		public function ConfigEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event{
			return new ConfigEvent(type);
		}
	}
}