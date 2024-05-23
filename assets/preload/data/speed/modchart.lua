function onCreatePost()

    setProperty('cameraSpeed', '100')
    setProperty('camHUD.alpha', 0)

   makeLuaSprite("funnyBlack", "", -800, -400)
   makeGraphic("funnyBlack", 3000, 2000, "0xFF000000")
   addLuaSprite("funnyBlack", true)
end

function onSongStart()
   doTweenAlpha("shiiii", "funnyBlack", '0', '6', "linear")
end

function onBeatHit()
    if curBeat == 2 then
        setProperty('isCameraOnForcedPos', true)
        setProperty('cameraSpeed', '1')
    end
    if curBeat == 166 then
        doTweenAlpha("computerOut", "computer", '0.00001', '0.25', "linear")
        doTweenAlpha("miniBFOut", "miniBF", '0.00001', '0.25', "linear")
        doTweenAlpha("miniSanicOut", "miniSanic", '0.00001', '0.25', "linear")
        setProperty('cameraSpeed', '100')
    end
    if curBeat == 169 then --fucking stupid ass shit fuck balls pussy cock dick
        setProperty('cameraSpeed', '1')
    end
    if curBeat == 171 then
        setProperty('cameraSpeed', '100')
        setProperty('bf.visible', true);
        setProperty('character3.visible', true);
        setProperty('character2.visible', true);
        setProperty('character1.visible', true);
        setProperty('bg3.visible', true);

        setProperty('bg.alpha', 0.00001)
        setProperty('light.alpha', 0.00001)
        setProperty('bg2.alpha', 0.00001)
        setProperty('minisanic.alpha', 0.00001)
        setProperty('minibf.alpha', 0.00001)
        setProperty('light.alpha', 0.00001)
        --doTweenZoom('slowInDolan', 'game', "1.2", 1.6, 'linear') why doesnt this function fucking work? we may never know
        setProperty('camZooming', 'false')
        runHaxeCode("FlxTween.tween(FlxG.camera, {zoom: 1}, 3, {ease: FlxEase.linear, onComplete: defaultCamZoom = 1});")
    end 
    if curBeat == 296 then
        doTweenY('bfDropOut', 'bfWatching', 1600, 1.2, 'elasticOut')
    end
    if curBeat == 308 then
        setProperty('bf.visible', false);
        setProperty('character3.visible', false);
        setProperty('character2.visible', false);
        setProperty('character1.visible', false);
        setProperty('bg3.visible', false);

        setProperty('bg.alpha', 1)
        setProperty('lights.alpha', 1)
        setProperty('bg2.alpha', 1)
        setProperty('minibf.alpha', 1)
        setProperty('minisanic.alpha', 1)
        setProperty('shot.visible', false);
    end 
end

function onStepHit()
    if curStep == 669 then
        setProperty('scream.visible', true);
        playAnim('scream', 'idle', true)
    end
    if curStep == 678 then
        setProperty('scream.visible', false);
    end
    if curStep == 685 then
        setProperty('cameraSpeed', '1')
    end
    if curStep == 1197 then
        setProperty('bf.visible', false);
        setProperty('shot.visible', true);
        playAnim('shot', 'shot', true)
    end
    if curStep == 1203 then
        doTweenX('spooderFlyX', 'boyfriend', 2000, 0.6, 'linear')
        doTweenY('spooderFlyY', 'boyfriend', -500, 0.6, 'linear')
        doTweenAngle('spooderFlyA', 'boyfriend', 6000, 0.6, 'linear')
    end
end