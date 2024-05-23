function onCreate()
makeAnimatedLuaSprite('cat', 'backgrounds/idiot/kitty',-50, 600);
addAnimationByPrefix('cat', 'kitty', 'kitty', 30, true)
addLuaSprite('cat', false)
scaleObject('cat', 1, 1) 
setObjectCamera('cat', 'Hud')

makeAnimatedLuaSprite('cat1', 'backgrounds/idiot/cta_idl',980, 750);
addAnimationByPrefix('cat1', 'ctaidle', 'ctaidle', 30, true)
addLuaSprite('cat1', false)
scaleObject('cat1', 1, 1) 
setObjectCamera('cat1', 'Hud')

makeAnimatedLuaSprite('guy1', 'backgrounds/idiot/stalker1', 1300, 250);
addAnimationByPrefix('guy1', 'stalkeridle', 'stalkeridle', 30, true)
addLuaSprite('guy1', true)
scaleObject('guy1', 0.8, 0.8) 
setObjectCamera('guy1', 'hud')

makeAnimatedLuaSprite('guy2', 'backgrounds/idiot/stalker1', -450, 250);
addAnimationByPrefix('guy2', 'stalkeridle', 'stalkeridle', 30, true)
addLuaSprite('guy2', true)
scaleObject('guy2', 0.8, 0.8) 
setObjectCamera('guy2', 'hud')
setProperty('guy2.flipX', true)
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'cat1' then
  doTweenY('cats', 'cat', 400, 0.5, 'elasticInOut')
  end
  if v1 == 'cat2' then
  doTweenY('cats2', 'cat1', 530, 0.5, 'elasticInOut')
  end
  if v1 == 'cat1Bye' then
  doTweenX('Bye1', 'cat', -1000, 1, 'quartInOut')
  doTweenAngle('Bye2', 'cat', 90, 0.8, 'quartInOut')
  end
  if v1 == 'cat2Bye' then
  doTweenX('Bye3', 'cat1', 3000, 1, 'quartInOut')
  doTweenAngle('Bye4', 'cat1', -90, 0.8, 'quartInOut') 
  end
  if v1 == 'guy' then
  doTweenX('Guy1', 'guy1', 950, 2, 'quartInOut')
  doTweenX('Guy2', 'guy2', -100, 2, 'quartInOut')
  end
  if v1 == 'guyBye' then
  doTweenY('Guy1', 'guy1', 1000, 1, 'quartInOut')
  doTweenY('Guy2', 'guy2', 1000, 1, 'quartInOut')
  end
 end
end
 
  