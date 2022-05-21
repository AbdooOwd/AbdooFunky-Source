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
     * Cool Variable
     * 
     * Too Cool
     */
    public static var fullDialog:Array<String>;

    public static function say(who:String, says:String)
        {
            //Ha ha, thats funny, idk what but its funny.
            //var dialog:Array<String> = [who + ': ', says];
            var text:String = who + ': ' + says;
            trace(text);
        }
}

//This is a joke file. We can say... Maybe...