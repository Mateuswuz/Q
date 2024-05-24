function onCreate()
makeLuaSprite("funnyWhite", "", -2400, -800)
    makeGraphic("funnyWhite", 8000, 6000, "0xFFFFFFFF")
    addLuaSprite("funnyWhite", false)

makeLuaSprite('floor', 'backgrounds/kitchen/floor', -750, 750);
addLuaSprite('floor', false)
scaleObject('floor', 2,2)

makeLuaSprite('bg', 'backgrounds/kitchen/topFull', -850, -150);
addLuaSprite('bg', false)
scaleObject('bg', 2,2)

makeLuaSprite('bg1', 'backgrounds/kitchen/counter', -830, 200);
addLuaSprite('bg1', false)
scaleObject('bg1', 2,2)

makeLuaSprite('chair', 'characters/internet/cerealChair', -280, 560);
addLuaSprite('chair', false)
scaleObject('chair', 2.2,2.2)

makeLuaSprite('spoon', 'characters/internet/spoonAndBowl', 850, 880);
addLuaSprite('spoon', true)
scaleObject('spoon', 2,2)

makeAnimatedLuaSprite('table', 'characters/internet/tableThrowDodgable', 550, 650);
addAnimationByPrefix('table', 'tablespin', 'tablespin', 30, true)
addLuaSprite('table', true)
scaleObject('table', 2,2) 

makeLuaSprite('overlay', 'backgrounds/kitchen/overlayThing', -850, 100);
addLuaSprite('overlay', true)
scaleObject('overlay', 2,2)

makeLuaSprite("funnyBlack", "", -800, -400)
   makeGraphic("funnyBlack", 3000, 2000, "0xFF000000")
   addLuaSprite("funnyBlack", true)
setObjectCamera('funnyBlack', 'Other')


setProperty('table.visible', false);
setProperty('spoon.visible', false);
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == '1' then
   setProperty('table.visible', true);
   setProperty('spoon.visible', true);
   doTweenX('Table', 'table', 3000, 1.5, 'linear')
    end
 end
end
