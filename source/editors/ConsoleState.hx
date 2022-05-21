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
    public var consoleText:String = '';
    public var text:FlxText;

    //Funcs

    override function create()
    {
        FlxG.camera.bgColor = FlxColor.BLACK;
		#if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("Console Screen", null);
		#end
        FlxG.sound.music.fadeOut(4, 0);

		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
		bg.scrollFactor.set();
		bg.color = 0xFF353535;
		add(bg);

        super.create();

        if (consoleText == '')
            {
                consoleText = 'No Console Output';
            }
        
        text = new FlxText(0, 0, FlxG.width, consoleText, 32);
        
        text.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
        text.screenCenter(XY);

        //adds
        add(text);
    }

    override function update(elapsed:Float)
    {
        // put here ma boiee
        if(controls.BACK)
            {
                MusicBeatState.switchState(new MainMenuState());
            }
        if(FlxG.keys.justPressed.S){
            consoleText = 'S Key Just Pressed';
            updateText();
        }

        super.update(elapsed);
    }
}