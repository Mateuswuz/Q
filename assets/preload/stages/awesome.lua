function onCreate()
makeLuaSprite('bg2', 'backgrounds/awesome/bg2', -950, -850);
addLuaSprite('bg2', false)
scaleObject('bg2',2.6, 2.6)


makeLuaSprite('bg1', 'backgrounds/awesome/bg1', -950, -850);
addLuaSprite('bg1', false)
scaleObject('bg1', 2.6,2.6)
setProperty('bg1.visible', true);

makeLuaSprite('f', 'backgrounds/awesome/fg', -850, 350);
addLuaSprite('f', false)
scaleObject('f', 2.6, 2.6)


makeAnimatedLuaSprite('bg4', 'backgrounds/awesome/audience', -980, 250);
addAnimationByPrefix('bg4', 'idle', 'idle', 30, true)
addLuaSprite('bg4', true)
scaleObject('bg4', 2.4, 2.4)

makeAnimatedLuaSprite('bg5', 'backgrounds/awesome/audience', 1050, 250);
addAnimationByPrefix('bg5', 'idle', 'idle', 30, true)
addLuaSprite('bg5', true)
scaleObject('bg5', 2.4, 2.4)
setProperty('bg5.flipX', true)

makeLuaSprite("funnyBlack", "", -800, -400)
makeGraphic("funnyBlack", 3000, 2000, "0xFF000000")
addLuaSprite("funnyBlack", false)
setObjectCamera('funnyBlack', 'Other')
setProperty('funnyBlack.alpha', 1)

runTimer('BG1',1)

--layer
setObjectOrder('f', getObjectOrder('gfGroup') + 0);

end

function onTimerCompleted(t,l,ll)
if t == 'BG1' then
setProperty('bg1.visible', false);
runTimer('BG2',1)
end

if t == 'BG2' then
setProperty('bg1.visible', true);
runTimer('BG1',1)
end
end


function onEvent(n, v1, v2)
	if n == '' then
   if v1 == '1' then
doTweenAlpha('Bblack1', 'funnyBlack', 0, 20, 'linear');
end
if v1 == '0' then
doTweenAlpha('Bblack2', 'funnyBlack', 1, 0.5, 'linear');
end
if v1 == '2' then
cancelTween(Bblack1)
setProperty('funnyBlack.alpha', 0)
end
if v1 == 'hi2' then
setObjectOrder('gfGroup', getObjectOrder('f') + 1);

end
end
end