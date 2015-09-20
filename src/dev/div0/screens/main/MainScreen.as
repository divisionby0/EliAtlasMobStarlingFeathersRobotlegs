package dev.div0.screens.main
{
import dev.div0.screens.ApplicationScreen;
import dev.div0.screens.main.MainScreenEvent;

import feathers.controls.Button;
import feathers.controls.LayoutGroup;
import feathers.layout.HorizontalLayout;
import feathers.layout.VerticalLayout;

import starling.display.Quad;

import starling.events.Event;
	
	public class MainScreen extends ApplicationScreen
	{
		private var toIntroScreenButton:Button;
		private var saveDataButton:Button;

		private var layout:VerticalLayout;

		public function MainScreen()
		{
			super();
			createUI();
		}
		
		override protected function createUI():void
		{
			layout = new VerticalLayout();
			layout.horizontalAlign = HorizontalLayout.HORIZONTAL_ALIGN_CENTER;
			layout.verticalAlign = HorizontalLayout.VERTICAL_ALIGN_MIDDLE;
			layout.gap = 10;
			var container:LayoutGroup = new LayoutGroup();
			container.layout = layout;

			addChild(container);

			toIntroScreenButton = new Button();
			toIntroScreenButton.label = "To Intro";

			toIntroScreenButton.defaultSkin = new Quad( 200, 60, 0xcccccc );
			toIntroScreenButton.downSkin = new Quad( 200, 60, 0x999999 );

			container.addChild(toIntroScreenButton);

			saveDataButton = new Button();
			saveDataButton.label = "Save data";

			saveDataButton.defaultSkin = new Quad( 200, 60, 0xcccccc );
			saveDataButton.downSkin = new Quad( 200, 60, 0x999999 );

			container.addChild(saveDataButton);
			
			createListeners();
		}
		override public function destroy():void{
			removeListeners();
		}

		private function removeListeners():void {
			toIntroScreenButton.removeEventListener(Event.TRIGGERED, toIntroButtonClickHandler);
			saveDataButton.removeEventListener(Event.TRIGGERED, saveButtonClickHandler);
		}
		
		private function createListeners():void
		{
			toIntroScreenButton.addEventListener(Event.TRIGGERED, toIntroButtonClickHandler);
			saveDataButton.addEventListener(Event.TRIGGERED, saveButtonClickHandler);
		}
		
		private function saveButtonClickHandler(event:Event):void
		{
			dispatchEvent(new MainScreenEvent(MainScreenEvent.SAVE_DATA_CLICK));
		}
		
		private function toIntroButtonClickHandler(event:Event):void
		{
			dispatchEvent(new MainScreenEvent(MainScreenEvent.TO_INTRO_SCREEN_CLICK));
		}
	}
}