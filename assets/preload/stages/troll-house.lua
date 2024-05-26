function onCreate()
--BG Inverted
makeLuaSprite('stage1', 'backgrounds/troll-house//inverted/bg', -650, -350);
addLuaSprite('stage1', false)
scaleObject('stage1', 2,2)

makeLuaSprite('stage2', 'backgrounds/troll-house/inverted/desk', -530, 290);
addLuaSprite('stage2', false)
scaleObject('stage2', 1.9,1.9)

--BG Normal
makeLuaSprite('bg1', 'backgrounds/troll-house//bg', -650, -350);
addLuaSprite('bg1', false)
scaleObject('bg1', 2,2)

makeLuaSprite('bg2', 'backgrounds/troll-house/deskShit', -530, 290);
addLuaSprite('bg2', false)
scaleObject('bg2', 1.9,1.9)


--HIDE
setProperty('stage1.visible', true);
setProperty('stage2.visible', true);
end

function onEvent(n, v1, v2)
	if n == 'Flash' then
   if v1 == '1' then
  cameraFlash('game', 'FFFFFF', '1')
  end
 end
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == '1' then
   cameraFlash('game', '000000', '1')
   triggerEvent('Change Character', 'bf', 'fb')
   triggerEvent('Change Character', 'dad', 'terry-mad-Inverted')
   triggerEvent('Change Character', 'gf', 'fg')
   setProperty('bg1.visible', true);
   setProperty('bg2.visible', true);
   end
   if v1 == '0' then
   cameraFlash('game', 'FFFFFF', '1')
   triggerEvent('Change Character', 'bf', 'bf')
   triggerEvent('Change Character', 'dad', 'terry-mad')
   triggerEvent('Change Character', 'gf', 'gf')
   setProperty('bg1.visible', true);
   setProperty('bg2.visible', true);
   end
   if v1 == 'camera' then
   doTweenZoom('zoom', 'camGame', 1, 0.01, 'sineInOut')
   setProperty('defaultCamZoom',1)
   end
 end
end
