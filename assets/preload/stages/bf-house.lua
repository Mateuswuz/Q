function onCreate()

makeLuaSprite('bg', 'backgrounds/tomfoolery/rom', -580, -410);
addLuaSprite('bg', false)
scaleObject('bg', 2,2)

makeLuaSprite('screen', 'backgrounds/tomfoolery/shad', 0, 0);
addLuaSprite('screen', true) 
scaleObject('screen', 1.3,1.3)
setObjectCamera('screen', 'Other')
setProperty('screen.visible', true)
screenCenter('screen','xy')
end