package dev.div0.screens.main
{
	import dev.div0.events.ScreenEvent;

import robotlegs.bender.extensions.starlingViewMap.impl.StarlingMediator;

public class MainScreenMediator extends StarlingMediator
	{
		[Inject]
		public var view:MainScreen;
		
		override public function initialize():void
		{
			view.addEventListener(MainScreenEvent.TO_INTRO_SCREEN_CLICK, toIntroClickHandler);
			view.addEventListener(MainScreenEvent.SAVE_DATA_CLICK, saveDataClickHandler);
		}

	private function saveDataClickHandler(event:MainScreenEvent):void {
		dispatch(new ScreenEvent(ScreenEvent.SAVE_DATA_REQUEST));
	}

	private function toIntroClickHandler(event:MainScreenEvent):void {
		dispatch(new ScreenEvent(ScreenEvent.TO_INTRO_SCREEN_REQUEST));
	}
	}
}