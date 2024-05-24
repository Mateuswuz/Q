function onCreate()

makeLuaSprite('bg3', 'backgrounds/bikini-bottom/sky', -1150, 250);
addLuaSprite('bg3', false)
scaleObject('bg3', 4,4)

makeLuaSprite('bg1', 'backgrounds/bikini-bottom/background_floor', -950, 1270);
addLuaSprite('bg1', false)
scaleObject('bg1', 4,4)

makeLuaSprite('bg', 'backgrounds/bikini-bottom/floor', -850, 1550);
addLuaSprite('bg', false)
scaleObject('bg', 4,4)

makeLuaSprite('bg2', 'backgrounds/bikini-bottom/houses', -850, 50);
addLuaSprite('bg2', false)
scaleObject('bg2', 4,4)

makeLuaSprite('bgg', 'backgrounds/bikini-bottom/night_sky', -800, 0);
addLuaSprite('bgg', false)
scaleObject('bgg', 4,4)

makeLuaSprite('bg-alt', 'backgrounds/bikini-bottom/night_sky_alt', -800, 0);
addLuaSprite('bg-alt', false)
scaleObject('bg-alt', 4,4)
setProperty('bg-alt.alpha', 0)

makeLuaSprite('blight', 'characters/internet/gigaweegee_backgroundlight', 150, 250);
addLuaSprite('blight', false)
scaleObject('blight', 2,2)

makeLuaSprite('faces', 'characters/internet/gigaweegee_weegeefaces', 750, 360);
addLuaSprite('faces', false)
scaleObject('faces', 2,2)

makeLuaSprite('light', 'characters/internet/gigaweegee_lightParticles', 150, 260);
addLuaSprite('light', false)
scaleObject('ligth', 2,2)

makeLuaSprite('boat', 'backgrounds/bikini-bottom/ghostboat', -850, 650);
addLuaSprite('boat', false)
scaleObject('boat', 4.4, 4.4)

makeLuaSprite('barrels', 'backgrounds/bikini-bottom/barrels', -850, 1650);
addLuaSprite('barrels', true)
scaleObject('barrels', 3.8,3.8) 

makeLuaSprite("funnyBlack", "", -800, -400)
makeGraphic("funnyBlack", 3000, 2000, "0xFF000000")
addLuaSprite("funnyBlack", false)
setObjectCamera('funnyBlack', 'HUD')
setProperty('funnyBlack.alpha', 0)

makeAnimatedLuaSprite('bubbles', 'backgrounds/bikini-bottom/bubbles', 0, 0);
addAnimationByPrefix('bubbles', 'bubbles', 'bubbles', 30, false)
addLuaSprite('bubbles', false)
scaleObject('bubbles', 2,2) 
setObjectCamera('bubbles', 'hud')
screenCenter('bubbles','xy')
setProperty('bubbles.visible',false);

--HIDE
setProperty('bgg.visible', false);
setProperty('blight.visible', false);
setProperty('faces.visible', false);
setProperty('light.visible', false);
setProperty('boat.visible', false);
setProperty('barrels.visible', false);

--layer
setObjectOrder('boat', getObjectOrder('dadGroup') + 0);
setObjectOrder('gfGroup', getObjectOrder('boat') + 1);
end

function onCountdownStarted()
setProperty('cameraSpeed',1000)
end

function onSongStart()
setProperty('cameraSpeed',1)
end

function onTimerCompleted(t,l,ll)
if t == 'P1' then
doTweenAngle('Faces', 'faces', 100000, 1000, 'linear')
runTimer('P1',1)
end

if t == 'Light1' then
doTweenAlpha('Light', 'light', 0.5, 1, 'linear');
doTweenAlpha('Light2', 'blight', 0.5, 1, 'linear');
runTimer('Light2',1.3)
end

if t == 'Light2' then
doTweenAlpha('Light1', 'light', 1, 1, 'linear');
doTweenAlpha('Light3', 'blight', 1, 1, 'linear');
runTimer('Light1',1.7)
end
if t == 'BG' then
doTweenAlpha('Light2', 'bg-alt', 1, 0.5, 'linear');
runTimer('GB',1)
end
if t == 'GB' then
doTweenAlpha('Light4', 'bg-alt', 0, 0.5, 'linear');
runTimer('BG',2)
end

end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'oh' then
playAnim('bubbles', 'bubbles', true)
setProperty('bubbles.visible',true);
doTweenAlpha('BB2', 'funnyBlack', 1, 0.5, 'linear');
end
if v1 == 'p2' then
setProperty('bubbles.visible',false);
setProperty('gf.visible',false);
doTweenAlpha('BB', 'funnyBlack', 0, 5, 'linear');
setProperty('bgg.visible', true);
setProperty('blight.visible', true);
setProperty('faces.visible', true);
setProperty('light.visible', true);
setProperty('boat.visible', true);
setProperty('barrels.visible', true);

runTimer('P1',1)
runTimer('Light1',1.7)
runTimer('BG',2)
   end
 end
end