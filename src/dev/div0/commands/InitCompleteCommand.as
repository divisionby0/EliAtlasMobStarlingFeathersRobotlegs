package dev.div0.commands
{
import dev.div0.StarlingContextView;
import dev.div0.screens.intro.IntroScreen;
	
	import robotlegs.bender.bundles.mvcs.Command;
	import robotlegs.bender.extensions.contextView.ContextView;


public class InitCompleteCommand extends Command
	{
		[Inject]
		public var contextView:ContextView;

		override public function execute():void{
			var starlingMain:StarlingContextView = (contextView.view as EliAtlasMobStarlingFeathersRobotlegs).getStarlingMain();
			starlingMain.addChild(new IntroScreen());
		}
	}
}