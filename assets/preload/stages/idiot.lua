function onCreate()

makeLuaSprite("funnyWhite", "", -2400, -800)
makeGraphic("funnyWhite", 8000, 6000, "0xFFFFFFFF")
addLuaSprite("funnyWhite", false)
setProperty('funnyWhite.alpha', 0)

makeAnimatedLuaSprite('sun', 'backgrounds/idiot/thesun', -1350, -1200);
addAnimationByPrefix('sun', 'sun bop', 'sun bop', 30, true)
addLuaSprite('sun', false)
scaleObject('sun', 2,2) 
setScrollFactor('sun', 0, 0)
setProperty('sun.alpha', 0)

makeLuaSprite('bllue', 'backgrounds/idiot/bsod', 0, 0);
addLuaSprite('bllue', true) 
scaleObject('bllue', 1.5,1.5)
setObjectCamera('bllue', 'Other')
screenCenter('bllue','xy')
setProperty('bllue.visible',false);
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == '1' then
  setProperty('sun.alpha', 1)
  setProperty('funnyWhite.alpha', 1)
  doTweenAlpha('sun', 'sun', 0, 0.8, 'linear');
  doTweenAlpha('funnyWhite', 'funnyWhite', 0, 0.8, 'linear');
end
  if v1 == '2' then
  doTweenAlpha('sun1', 'sun', 1, 1.5, 'linear');
  doTweenAlpha('funnyWhite1', 'funnyWhite', 1, 1.5, 'linear');
  end
  if v1 == '0' then
  doTweenAlpha('sun0', 'sun', 0, 0.5, 'linear');
  doTweenAlpha('funnyWhite0', 'funnyWhite', 0, 0.5, 'linear');
  end
  if v1 == 'blue' then
  setProperty('bllue.visible',true);
   end
 end
end