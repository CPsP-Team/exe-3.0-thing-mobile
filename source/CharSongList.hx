package;

import flixel.FlxG;

class CharSongList
{
	static var initialized = false;
	
	public static final characters = [
		"majin",
		"lord x",
		"tails doll",
		"requital",
		"fleetway",
		"fatalerror",
		"xterion",
		"sl4sh",
		"chaotix",
		"yourself...",
		"christmas",
		"curse",
		"starved",
		"satanos",
		"sonic has passed",
		"needlemouse",
		"hog",
		"sunky",
		"sanic",
		"sh tails",
		"coldsteel"
	];
	
	public static var charactersUnlocked:Array<String> = [];
	
	public static final songData:Map<String, Array<String>> = [
		"majin" => ["endless", "endless-og"],
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
		"hog" => ["hedge", "manual-blast"],
        "sunky" => ["milk"],
        "sanic" => ["too-fest"],
		"sh tails" => ["mania"],
		"coldsteel" => ["personel"]		
	];
	
	public static function init()
	{
		if (initialized) return;
		initialized = true;
		
		charactersUnlocked = FlxG.save.data.charactersUnlocked != null ? 
			FlxG.save.data.charactersUnlocked.copy() : [];
	}

	publc static function unlockSong(songId:String) {
        if (FlxG.save.data.unlockedSongs == null) {
            FlxG.save.data.unlockedSongs = [];
        }
        
        if (!FlxG.save.data.unlockedSongs.contains(songId)) {
            FlxG.save.data.unlockedSongs.push(songId);
            save();
        }
    }
    
    public static function isSongUnlocked(songId:String):Bool {
        if (FlxG.save.data.cheatUnlock) return true;
        
        if (FlxG.save.data.unlockedSongs != null) {
            return FlxG.save.data.unlockedSongs.contains(songId);
        }
        return false;
    }
	
	public static function save() {
		FlxG.save.data.charactersUnlocked = charactersUnlocked.copy();
	}
	
	public static function getSongsByChar(char:String):Array<String> {
		return songData.exists(char) ? songData.get(char) : [];
	}
}
