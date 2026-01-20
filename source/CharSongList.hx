package;
import flixel.FlxG;

class CharSongList
{
	static var loaded:Bool = false;

	public static var data:Map<String, Array<String>> = [
	  "finale" => ["final-escape"],
		"majin" => ["endless", "endless-og", "endeavors"],
		"lord x" => ["cycles", "fate"],
		"tails doll" => ["sunshine", "soulless"],
		"requital" => ["forestall-desire", "deception"],
		"fleetway" => ["chaos"],
		"fatalerror" => ["fatality"],
		"xterion" => ["substantial", "digitalized"],
		"sl4sh" => ["b4cksl4sh"],
		"chaotix" => ["my-horizon", "our-horizon"],
		"yourself..." => ["yourself"],
		"christmas" => ["missiletoe", "slaybells"],
		"curse" => ["malediction"],
		"satanos" => ["perdition"],
		"starved" => ["prey", "fight-or-flight"],
		"sonic has passed" => ["burning"],
		"needlemouse" => ["round-a-bout"],
		"hog" => ["manual-blast"],
		"sunky" => ["milk"],
		"sanic" => ["too-fest"],
		"coldsteel" => ["personel"],
		"sh tails" => ["mania"]
	];

	public static var characters:Array<String> = [
	"finale",
	"majin", 
    "lord x", 
  	"tails doll", 
  	"requital",
  	"sunky", 
    "fleetway", 
    "fatalerror", 
	"xterion",
  	"chaotix", 
    "yourself...",
    "christmas",
    "curse", 
    "starved",
    "needlemouse", 
    "hog", 
    "sanic", 
    "coldsteel", 
    "sh tails"
	];

	public static var charactersUnlocked:Array<String> = [
	"finale",
	"majin", 
    "lord x", 
  	"tails doll",
  	"requital",
  	"sunky", 
    "fleetway", 
    "fatalerror",
	"xterion",
  	"chaotix", 
    "yourself...",
    "christmas",
    "curse", 
    "starved",
    "needlemouse", 
    "hog", 
    "sanic", 
    "coldsteel", 
    "sh tails"
    ];

	public static var songToFreeplayChar:Map<String, String> = [
		"endless" => "majin",
		"chaos" => "fleetway",
		"fatality" => "fatalerror",
		"b4cksl4sh" => "sl4sh",
		"burning" => "sonic has passed",
		"soulless" => "tails doll",
		"malediction" => "curse",
		"digitalized" => "xterion",
		"manual-blast" => "hog",
		"black-sun" => "faker",
		"perdition" => "satanos"
	];

	public static function init()
	{
		if (!loaded)
		{
			loaded = true;

			if (FlxG.save.data.charactersUnlocked != null)
			{
				var unlockedShit:Array<String> = FlxG.save.data.charactersUnlocked;

				for (str in unlockedShit)
				{
					charactersUnlocked.push(str);
				}
			}
			else
			{
				FlxG.save.data.charactersUnlocked = [];
			}

			trace(FlxG.save.data.charactersUnlocked);
		}
	}

	public static function save()
		for (str in charactersUnlocked)
			if (!FlxG.save.data.charactersUnlocked.contains(str))
				FlxG.save.data.charactersUnlocked.push(str);

	public static function getSongsByChar(char:String)
	{
		if (data.exists(char))
			return data.get(char);
		return [];
	}
}