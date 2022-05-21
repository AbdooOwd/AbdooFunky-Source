package editors;

#if desktop
import Discord.DiscordClient;
#end
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;




class ConsoleState extends MusicBeatState
{
    override function create()
    {
        FlxG.camera.bgColor = FlxColor.BLACK;
		#if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("Editors Main Menu", null);
		#end

		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
		bg.scrollFactor.set();
		bg.color = 0xFF353535;
		add(bg);

        var consoleText:String = '';
        var text:FlxText = new FlxText(0, 0, FlxG.width, consoleText, 20, true);

        if (consoleText == '')
            consoleText = 'No Console Text';
        
        text.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
        text.screenCenter(XY);

        add(text);
    }

    override function update(elapsed:Float)
    {
        if(FlxG.keys.justPressed.S){
            consoleText = 'S Pressed\n';
        }
    }
}