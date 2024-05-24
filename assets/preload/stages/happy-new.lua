function onCreate()

makeLuaSprite('bg', 'backgrounds/happy/bgFull', -590, -200);
addLuaSprite('bg', false)
scaleObject('bg', 2,2)

makeLuaSprite('bg2', 'characters/trolling/happyChair', 1030, 330);
addLuaSprite('bg2', false)
scaleObject('bg2', 1, 1)
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'hud' then
doTweenAlpha('SHIT', 'camHUD', 1, 5, 'linear');
doTweenAlpha('SHIT1', 'camGame', 1, 5, 'linear');
  end
 end
end