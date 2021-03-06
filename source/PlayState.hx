package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.util.FlxCollision;

class PlayState extends FlxState {

    var _snake:Snake;
    var _walls:FlxGroup;

    override public function create():Void {

        super.create();

        FlxG.mouse.visible = false;

        _walls = FlxCollision.createCameraWall(
            FlxG.camera,
            true,
            1
        );

        _snake = new Snake();

    }

    override public function update(elapsed:Float):Void {

        super.update(elapsed);

        FlxG.overlap(_snake, _walls, _gameOver);

    }

    function _gameOver(s1:FlxSprite, s2:FlxSprite):Void {

        _snake.gameOver(s1, s2);
    
    }

}
