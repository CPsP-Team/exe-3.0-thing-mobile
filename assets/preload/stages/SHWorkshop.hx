function onCreate() {
    var bg = new FlxSprite(-750, 50).loadGraphic(Paths.image("stages/bg"));
    bg.scale.set(1.5, 1.5);
    bg.antialiasing = true;
    add(bg);

}