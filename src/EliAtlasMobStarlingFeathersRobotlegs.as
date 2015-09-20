package {

import dev.div0.AppConfig;
import dev.div0.InitRL;
import dev.div0.StarlingContextView;

import feathers.controls.StackScreenNavigator;


import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.display3D.Context3DProfile;
import flash.display3D.Context3DRenderMode;
import flash.events.Event;

import robotlegs.bender.bundles.mvcs.MVCSBundle;
import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.extensions.starlingViewMap.StarlingViewMapExtension;

import robotlegs.bender.framework.api.IContext;
import robotlegs.bender.framework.impl.Context;

import starling.core.Starling;
import starling.events.Event;

[SWF(width="960",height="640",frameRate="60",backgroundColor="#4a4137")]
public class EliAtlasMobStarlingFeathersRobotlegs extends Sprite
{
    private var _starling:Starling;
    private var _context:IContext;

    public function EliAtlasMobStarlingFeathersRobotlegs() {
        if(this.stage)
        {
            this.stage.scaleMode = StageScaleMode.NO_SCALE;
            this.stage.align = StageAlign.TOP_LEFT;
        }
        addLoaderListener();
    }

    private function addLoaderListener():void
    {
        loaderInfo.addEventListener(flash.events.Event.COMPLETE, loadCompleteHandler);
    }

    private function loadCompleteHandler(event:flash.events.Event):void
    {
        createStarling();
    }

    private function createStarling():void
    {
        _starling = new Starling(StarlingContextView, stage);
        /*
        _context = new Context()
                .install(MVCSBundle, StarlingViewMapExtension)
                .configure(AppConfig, new ContextView(this), Starling.current);
                */
        _starling.start();
        _starling.addEventListener(starling.events.Event.ROOT_CREATED, starling_rootCreatedHandler);
    }

    private function starling_rootCreatedHandler(event:starling.events.Event):void {
        new InitRL(this);
        /*
        _context = new Context()
                .install(MVCSBundle, StarlingViewMapExtension)
                .configure(AppConfig, Starling.current)
                .configure(new ContextView(this));
                */
    }

    public function getStarlingMain():StarlingContextView{
        return (_starling.root as StarlingContextView);
    }
}
}
