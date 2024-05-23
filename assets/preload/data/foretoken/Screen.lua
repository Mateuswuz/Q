function onCreate()
makeLuaSprite('blakc', 'backgrounds/black', 0, 0);
addLuaSprite('blakc', true)
scaleObject('blakc', 1, 1)
setObjectCamera('blakc', 'Hud')
setProperty('blakc.alpha', 1)
screenCenter('blakc','xy')
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'fuck' then
doTweenAlpha('BYE', 'blakc', 0, 0.5, 'sineOut');
  end
 end
end

