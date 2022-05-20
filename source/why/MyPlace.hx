// This file is like my playground, I test nothing here,  play with my keyboard (:
// Also, nothing for the mod is actually here.
// So if you are searching for a secret thing, there is nothing here.

package why;
import flixel.FlxState;
import flixel.FlxG;

class MyDialog extends MusicBeatState {
    var myDialog:Array<String>;
    var guyDialog:Array<String>;

    /**
	 * This things does things.
	 *
	 * @param	Thing		that is a thing.
	 */
    var fullDialog:Array<String>;

    private static function say(who:String, says:String)
        {
            //Ha ha, thats funny, idk what but its funny.
            var dialog:Array = [who + ': ', says];
            //trace(dialog);
            fullDialog = dialog;
            doFirst();
        }
    public static doFirst(){
        trace(fullDialog);
    }
}

//This is a joke file. We can say... Maybe...