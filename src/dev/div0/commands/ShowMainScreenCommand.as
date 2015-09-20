package dev.div0.commands
{
import dev.div0.model.AppModel;
import dev.div0.screens.ScreenDestroy;
import dev.div0.screens.main.MainScreen;
import dev.div0.StarlingContextView;
import dev.div0.services.FloxService;

	import robotlegs.bender.extensions.contextView.ContextView;

	public class ShowMainScreenCommand extends SaveEventCommand
	{
		[Inject]
		public var model:AppModel;
		
		[Inject]
		public var contextView:ContextView;

		[Inject]
		public var service:FloxService;
		
		override public function execute():void
		{
			model.incrementToMainClicksCount();
			var starlingContextView:StarlingContextView = (contextView.view as EliAtlasMobStarlingFeathersRobotlegs).getStarlingMain();

			new ScreenDestroy(starlingContextView);
			starlingContextView.addChildAt(new MainScreen(),0);

			saveEvent();
		}

		override protected function saveEvent():void {
			service.saveGoToMainCount(model.getToMainClicksCount());
		}
	}
}