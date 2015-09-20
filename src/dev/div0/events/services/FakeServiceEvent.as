package dev.div0.events.services
{
	import flash.events.Event;
	
	public class FakeServiceEvent extends Event
	{
		public static const SERVICE_ACTIONS_COMPLETE:String = "serviceCallComplete";
		public function FakeServiceEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event{
			return new FakeServiceEvent(type);
		}
	}
}