package dev.div0.commands
{
	import dev.div0.screens.intro.IntroScreenMediator;
	import dev.div0.screens.main.MainScreenMediator;
	
	import robotlegs.bender.bundles.mvcs.Command;
	
	public class SaveDataCompleteCommand extends Command
	{
		override public function execute():void
		{
			trace("Save data complete");
			//Alert.show("Save data complete");
		}
	}
}