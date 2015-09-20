package dev.div0
{
	import com.gamua.flox.Flox;

import dev.div0.commands.SaveDataCommand;

	import dev.div0.commands.ShowIntroScreenCommand;
	import dev.div0.commands.ShowMainScreenCommand;
	import dev.div0.events.ConfigEvent;
	import dev.div0.events.ScreenEvent;
import dev.div0.model.AppModel;
import dev.div0.screens.intro.IntroScreen;
	import dev.div0.screens.intro.IntroScreenMediator;
	import dev.div0.screens.main.MainScreen;
	import dev.div0.screens.main.MainScreenMediator;
import dev.div0.services.FloxService;
	
	import flash.events.IEventDispatcher;
	
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.api.IInjector;
	
	public class AppConfig implements IConfig
	{
		[Inject]
		public var dispatcher:IEventDispatcher;
		
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		[Inject]
		public var injector:IInjector;
		
		[Inject]
		public var commandMap:IEventCommandMap;
		
		[Inject]
		public var contextView:ContextView;
		
		[Inject]
		public var context:IContext;
		
		public function configure():void
		{
			injector.map(FloxService);
			injector.map(AppModel).asSingleton();

			commandMap.map(ConfigEvent.CONFIG_INIT_COMPLETE).toCommand(ShowIntroScreenCommand);

			commandMap.map(ScreenEvent.TO_MAIN_SCREEN_REQUEST).toCommand(ShowMainScreenCommand);
			commandMap.map(ScreenEvent.TO_INTRO_SCREEN_REQUEST).toCommand(ShowIntroScreenCommand);
			commandMap.map(ScreenEvent.SAVE_DATA_REQUEST).toCommand(SaveDataCommand);

			mediatorMap.map(IntroScreen).toMediator(IntroScreenMediator);
			mediatorMap.map(MainScreen).toMediator(MainScreenMediator);

			context.afterInitializing(initComplete);
		}
		
		private function initComplete():void
		{
			Flox.init("cjF0etbqidhfuOvK", "YpYbs3HYqC0jTm3T", "0.9");
			dispatcher.dispatchEvent(new ConfigEvent(ConfigEvent.CONFIG_INIT_COMPLETE));
		}
	}
}