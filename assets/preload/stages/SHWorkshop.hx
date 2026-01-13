function onCreate() {
    var bg = new FlxSprite(-400, -700).loadGraphic(Paths.image("stages/bg"));
    bg.antialiasing = true;
    add(bg);
}