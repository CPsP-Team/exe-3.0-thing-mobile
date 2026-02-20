import PlayState;

var bg:FlxSprite;
var floor:FlxSprite;
function onCreate() {
    bg = new FlxSprite(-750, 50).loadGraphic(Paths.image("requital/marble_BGP1"));
    bg.scale.set(1.5, 1.5);
    bg.antialiasing = true;
    add(bg);

    floor = new FlxSprite(-750, 50).loadGraphic(Paths.image("requital/marble_floorP1"));
    floor.scale.set(1.5, 1.5);
    floor.antialiasing = true;
    add(floor);
}

function onUpdate(elapsed:Float) {
    if (PlayState.SONG.song.toLowerCase()== 'forestall-desire') {
    switch (curStep) {
        case 784:
            FlxG.camera.flash();

            bg.alpha = 0;
            floor.alpha = 0;
        case 1311:
            FlxG.camera.flash();

            bg.alpha = 1;
            floor.alpha = 1;
    }
  }
}