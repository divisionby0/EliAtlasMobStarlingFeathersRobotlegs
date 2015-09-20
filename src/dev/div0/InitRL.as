package dev.div0
{
	import flash.display.DisplayObjectContainer;
	
	import org.osmf.net.metrics.MetricValue;
	
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.extensions.starlingViewMap.StarlingViewMapExtension;
import robotlegs.bender.framework.api.IContext;
import robotlegs.bender.framework.impl.Context;

import starling.core.Starling;

public class InitRL
	{
		private var _context:IContext;
		
		public function InitRL(rootDisplayObject:DisplayObjectContainer)
		{
			// вот тут долго просидел > 3 часов, изначально было все сместе .configure(AppConfig, new ContextView(this), Starling.current), затем изменил на то как сейчас и медиатор (InitScreenMediator) 'появился'
			_context = new Context()
					.install(MVCSBundle, StarlingViewMapExtension)
					.configure(AppConfig, Starling.current)
					.configure(new ContextView(rootDisplayObject));
		}
	}
}