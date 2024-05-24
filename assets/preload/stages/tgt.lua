function onCreate()
makeLuaSprite('bg', 'backgrounds/tgt/bg', -650, -350);
addLuaSprite('bg', false)
scaleObject('bg', 4.4, 4.4)

makeAnimatedLuaSprite('bg4', 'backgrounds/tgt/bluepokemon', -550, 0);
addAnimationByPrefix('bg4', 'bluepokemon', 'bluepokemon', 30, true)
addLuaSprite('bg4', true)
scaleObject('bg4', 0.6, 0.6)

makeAnimatedLuaSprite('bg3', 'backgrounds/tgt/cracksmoekr', 1300, 30);
addAnimationByPrefix('bg3', 'chainsmoker', 'chainsmoker', 30, true)
addLuaSprite('bg3', false)
scaleObject('bg3', 0.6, 0.6)

makeAnimatedLuaSprite('bg2', 'backgrounds/tgt/ShadowBop', 930, -220);
addAnimationByPrefix('bg2', 'EdgyLol', 'EdgyLol', 30, true)
addLuaSprite('bg2', false)
scaleObject('bg2', 0.6, 0.6)
end