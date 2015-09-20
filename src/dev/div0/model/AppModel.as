/**
 * Created by ilay on 20.09.2015.
 */
package dev.div0.model
{
public class AppModel
{
    private var toMainClicksCount:int=0;

    public function incrementToMainClicksCount():void
    {
        toMainClicksCount+=1;
    }

    public function getToMainClicksCount():int{
        return toMainClicksCount;
    }
}
}
