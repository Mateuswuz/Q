function onCreate()

makeAnimatedLuaSprite('bg2', 'backgrounds/trollistic/BallisticBackground', -650, -350);
addAnimationByPrefix('bg2', 'Background Whitty Moving', 'Background Whitty Moving', 30, true)
addLuaSprite('bg2', false)
scaleObject('bg2', 2,2) 

makeLuaSprite('bg', 'backgrounds/trollistic/whittyback',-650, -350);
addLuaSprite('bg', false)
scaleObject('bg', 2,2)

end
