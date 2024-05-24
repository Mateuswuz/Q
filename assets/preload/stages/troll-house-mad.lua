function onCreate()

--Back
makeLuaSprite('red', 'red', 250, -250);
addLuaSprite('red', false)
scaleObject('red', 2,2) 

makeLuaSprite('text', 'backgrounds/troll-house-mad/Window text_', 830, -250);
addLuaSprite('text', false)
scaleObject('text', 1, 1)

makeLuaSprite('bg1', 'backgrounds/troll-house-mad/paintings1', -700, -150);
addLuaSprite('bg1', false)
scaleObject('bg1', 2,2)

--BG


makeAnimatedLuaSprite('bg2', 'backgrounds/troll-house-mad/bgAnimated', -700, -350);
addAnimationByPrefix('bg2', 'bgIdle', 'bgIdle', 30, true)
addLuaSprite('bg2', false)
scaleObject('bg2', 2,2) 

makeLuaSprite('bg3', 'backgrounds/troll-house-mad/screenThing', -130, 300);
addLuaSprite('bg3', false)
scaleObject('bg3', 1.9,1.9)


makeAnimatedLuaSprite('bg4', 'backgrounds/troll-house-mad/deskAnimated', -350, 250);
addAnimationByPrefix('bg4', 'deskIdle', 'deskIdle', 30, true)
addLuaSprite('bg4', false)
scaleObject('bg4', 1.9,1.9)

   makeLuaSprite('vignette', 'backgrounds/vignette', 0, 0)
    setScrollFactor('vignette', 1.0, 1.0)
    setObjectCamera('vignette', 'camHUD')
    addLuaSprite('vignette', true)
	  setProperty('flash.alpha',1)


makeLuaSprite('blakc', 'backgrounds/black', 0, 0);
addLuaSprite('blakc', true) 
scaleObject('blakc', 1, 1)
setObjectCamera('blakc', 'Other')
setProperty('blakc.alpha', 1)
screenCenter('blakc','xy')
setProperty('blakc.visible',true);
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'hi' then
  setProperty('blakc.alpha', 0)
  doTweenAlpha('blakc', 'blakc', 1, 0.3, 'linear');
  end
  if v1 == 'end' then
  doTweenAlpha('S', 'camHUD', 0, 0.5, 'linear');
  doTweenAlpha('S2', 'boyfriend', 0, 0.5, 'linear');
  doTweenAlpha('S3', 'gf', 0, 0.5, 'linear');

  end
  if v1 == 'fuck' then
  setProperty('blakc.visible',false);
   end
  end
end


