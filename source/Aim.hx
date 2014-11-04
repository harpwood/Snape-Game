package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;
import flixel.util.FlxRandom;

class Aim extends FlxSprite {

    var _tileSize:Int;

    override public function new(X:Int=0, Y:Int=0):Void {
    
        super(X, Y);
        
        _tileSize = Settings.tileSize;
        makeGraphic(_tileSize, _tileSize, 0xffcc3333);
    
    }

    public function resetPosition() {
    
        setPosition(
            FlxRandom.intRanged(
                0, 
                Std.int(FlxG.width / _tileSize) - 1
            ) * _tileSize, 
            FlxRandom.intRanged(
                0, 
                Std.int(FlxG.height / _tileSize) - 1
            ) * _tileSize
        );

    }

}
