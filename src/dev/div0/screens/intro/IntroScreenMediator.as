package dev.div0.screens.intro
{
import dev.div0.events.ScreenEvent;

import robotlegs.bender.extensions.starlingViewMap.impl.StarlingMediator;

public class IntroScreenMediator extends StarlingMediator
	{
		[Inject]
		public var view:IntroScreen;

		public function IntroScreenMediator(){
			super();
		}

		override public function initialize():void{
			view.addEventListener(IntroScreenEvent.TO_MAIN_SCREEN_CLICK, toMainScreenClickHandler);
		}

	private function toMainScreenClickHandler(event:IntroScreenEvent):void {
		dispatch(new ScreenEvent(ScreenEvent.TO_MAIN_SCREEN_REQUEST));
	}
	}
}