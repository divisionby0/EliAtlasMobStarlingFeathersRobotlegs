package dev.div0.screens.intro
{
	import dev.div0.events.ScreenEvent;
import dev.div0.screens.ApplicationScreen;

import feathers.controls.Button;
import feathers.controls.LayoutGroup;
import feathers.layout.HorizontalLayout;
import feathers.layout.VerticalLayout;

import starling.display.Quad;

import starling.events.Event;
	
	public class IntroScreen extends ApplicationScreen
	{
		private var toMainButton:Button;
		private var layout:VerticalLayout;

		public function IntroScreen()
		{
			super();
			createUI();
		}

		override protected function createUI():void
		{
			layout = new VerticalLayout();
			layout.horizontalAlign = HorizontalLayout.HORIZONTAL_ALIGN_CENTER;
			layout.verticalAlign = HorizontalLayout.VERTICAL_ALIGN_MIDDLE;
			var container:LayoutGroup = new LayoutGroup();
			container.layout = layout;

			addChild(container);

			toMainButton = new Button();
			toMainButton.label = "To main";

			toMainButton.defaultSkin = new Quad( 200, 60, 0xcccccc );
			toMainButton.downSkin = new Quad( 200, 60, 0x999999 );

			container.addChild(toMainButton);
			createListeners();
		}
		
		private function createListeners():void
		{
			toMainButton.addEventListener(Event.TRIGGERED, toMainButtonClickHandler);
		}
		
		private function toMainButtonClickHandler(event:Event):void
		{
			//dispatchEvent(new ScreenEvent(ScreenEvent.TO_MAIN_SCREEN_REQUEST));
			dispatchEvent(new IntroScreenEvent(IntroScreenEvent.TO_MAIN_SCREEN_CLICK));
		}

		override public function destroy():void{
			removeListeners();
		}

		private function removeListeners():void {
			toMainButton.removeEventListener(Event.TRIGGERED, toMainButtonClickHandler);
		}
	}
}