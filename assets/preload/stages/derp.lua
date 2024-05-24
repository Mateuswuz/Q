function onCreate()
makeAnimatedLuaSprite('bg', 'backgrounds/derp/buildings_yayy', -1250, -770);
addAnimationByPrefix('bg', 'buildings yayy', 'buildings yayy', 30, true)
addLuaSprite('bg', false)
scaleObject('bg', 2,2)

makeAnimatedLuaSprite('bg1', 'backgrounds/derp/its_called_a_road', -1700, 600);
addAnimationByPrefix('bg1', 'Road road road', 'Road road road', 30, true)
addLuaSprite('bg1', false)
scaleObject('bg1', 2.2, 2.2)

makeAnimatedLuaSprite('bg2', 'backgrounds/derp/stop_sign_blur_this', 1150, 250);
addAnimationByPrefix('bg2', 'Stop sign', 'Stop sign', 30, true)
addLuaSprite('bg2', true)
scaleObject('bg2', 2,2)
end