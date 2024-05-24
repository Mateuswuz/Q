local bfCamera = true;

function onCreatePost()
setProperty('isCameraOnForcedPos', true)
setProperty('camFollowPos.x', getMidpointX('bg2'))
		setProperty('camFollow.x', getMidpointX('bg2') + 0)
		setProperty('camFollowPos.y', getMidpointY('bg2'))
		setProperty('camFollow.y', getMidpointY('bg2') + -150)
end

function onCreate()
setProperty('skipCountdown', true)

makeAnimatedLuaSprite('scream', 'backgrounds/mlg-studio/scream', 950, 500);
addAnimationByPrefix('scream', 'idle', 'screamAnimat', 30, false)
addLuaSprite('scream', true)
scaleObject('scream', 1, 1) 

makeAnimatedLuaSprite('shot', 'backgrounds/mlg-studio/owned', 0, 0);
addAnimationByPrefix('shot', 'shot', 'shot instance', 30, false)
addLuaSprite('shot', false)
scaleObject('shot', 4.2, 4.2) 
setObjectCamera('shot', 'Other')
screenCenter('shot','xy')
setProperty('shot.visible',false);

makeLuaSprite('bg', 'backgrounds/mlg-studio/sanicSTAGE2_mainBG', -530, -150);
addLuaSprite('bg', false)
scaleObject('bg', 2,2)


makeLuaSprite('bg2', 'backgrounds/mlg-studio/sanicSTAGE2_computer', 650, 850);
addLuaSprite('bg2', true)
scaleObject('bg2', 2,2)

makeLuaSprite('light', 'backgrounds/mlg-studio/sanicSTAGE2_lightStands', 250, 350);
addLuaSprite('light', false)
scaleObject('light', 2,2)

makeAnimatedLuaSprite('minisanic', 'backgrounds/mlg-studio/sanicSTAGE2_computerSN', 950, 1030);
addAnimationByPrefix('minisanic', 'right', 'minisonc_right', 30, true)
addAnimationByPrefix('minisanic', 'up', 'minisonc_up', 30, true)
addAnimationByPrefix('minisanic', 'down', 'minisonc_down', 30, true)
addAnimationByPrefix('minisanic', 'left', 'minisonc_left', 30, true)
addAnimationByPrefix('minisanic', 'idle', 'minisonc_idle', 30, true)
addLuaSprite('minisanic', true)
scaleObject('minisanic', 1, 1) 

makeAnimatedLuaSprite('minibf', 'backgrounds/mlg-studio/sanicSTAGE2_computerBF', 1160, 1050);
addAnimationByPrefix('minibf', 'right', 'minib_right', 30, true)
addAnimationByPrefix('minibf', 'up', 'minib_up', 30, true)
addAnimationByPrefix('minibf', 'down', 'minib_down', 30, true)
addAnimationByPrefix('minibf', 'left', 'minib_left', 30, true)
addAnimationByPrefix('minibf', 'Idle', 'minib_idle', 30, true)
addLuaSprite('minibf', true)
scaleObject('minibf', 1, 1) 

makeLuaSprite('bg3', 'backgrounds/mlg-studio/sanicSTAGE3_mainBG', -170, 0);
addLuaSprite('bg3', false)
scaleObject('bg3', 2.6, 2.6)

makeAnimatedLuaSprite('character1', 'backgrounds/mlg-studio/sanicSTAGE2_dancingFrog', 1250, 400);
addAnimationByPrefix('character1', 'froggiedance', 'froggiedance', 30, true)
addLuaSprite('character1', false)
scaleObject('character1', 1, 1) 

makeAnimatedLuaSprite('character2', 'backgrounds/mlg-studio/sanicSTAGE2_goobyBG', 1520, -2);
addAnimationByPrefix('character2', 'goobyidle', 'goobyidle', 30, true)
addLuaSprite('character2', false)
scaleObject('character2', 1.3, 1.3) 

makeAnimatedLuaSprite('character3', 'backgrounds/mlg-studio/sanicSTAGE2_unicycleFrog', 1780, 300);
addAnimationByPrefix('character1', 'unicyclefrogbalance', 'unicyclefrogbalance', 12, true)
addLuaSprite('character3', true)
scaleObject('character3', 1.1, 1.1) 

makeAnimatedLuaSprite('bf', 'backgrounds/mlg-studio/sanicSTAGE3_bfCamera', 3150, 750);
addAnimationByPrefix('bf', 'turn', 'cambf_turning', 30, false)
addAnimationByPrefix('bf', 'idle', 'cambf_idle', 30, true)
addLuaSprite('bf', true)
scaleObject('bf', 1,1) 
setScrollFactor('bf', 5.5, 1)

--HIDE
setProperty('bf.visible', false);
setProperty('character3.visible', false);
setProperty('character2.visible', false);
setProperty('character1.visible', false);
setProperty('bg3.visible', false);

setProperty('scream.visible', false);
end

function onUpdate(elapsed)
    playAnim('minibf', getProperty('boyfriend.animation.curAnim.name')) -- simple but it works!
    playAnim('minisanic', getProperty('dad.animation.curAnim.name'))
end

function onUpdate()
    if bfCamera == true then
        if mustHitSection then
         setProperty('bf.flipX', true)
       else
         setProperty('bf.flipX', false)
       end
     end
   end