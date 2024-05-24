function onCreate()
makeLuaSprite('bg3', 'backgrounds/graveyard/the-fog-is-coming', -750, -350);
addLuaSprite('bg3', false)
scaleObject('bg3', 2,2)

makeLuaSprite('bg', 'backgrounds/graveyard/ground', -550, -550);
addLuaSprite('bg', false)
scaleObject('bg', 2.7,2.7)

makeLuaSprite('bg1', 'backgrounds/graveyard/headstones', -450, -150);
addLuaSprite('bg1', false)
scaleObject('bg1', 2,2)

makeAnimatedLuaSprite('bg4', 'backgrounds/graveyard/FrontSkeleton1_Assets', -330, 650);
    addAnimationByPrefix('bg4', 'FrontSkeleton1_Assets', 'FrontSkeleton1_Assets', 20, true)
    addLuaSprite('bg4', true)
    scaleObject('bg4', 1, 1) 

makeAnimatedLuaSprite('bg5', 'backgrounds/graveyard/FrontSkeleton2_Assets', 1330, 750);
    addAnimationByPrefix('bg5', 'FrontSkeleton2_Assets', 'FrontSkeleton2_Assets', 20, true)
    addLuaSprite('bg5', true)
    scaleObject('bg5', 1, 1) 

makeAnimatedLuaSprite('bg6', 'backgrounds/graveyard/MCSkeleton_Assets', 1230, 150);
    addAnimationByPrefix('bg6', 'MCSkeleton_Assets', 'MCSkeleton_Assets', 20, true)
    addLuaSprite('bg6', false)
    scaleObject('bg6', 1, 1) 

makeAnimatedLuaSprite('bg7', 'backgrounds/graveyard/TrollSkull_Assets', -400, 310);
    addAnimationByPrefix('bg7', 'TrollSkull_Assets', 'TrollSkull_Assets', 20, true)
    addLuaSprite('bg7', false)
    scaleObject('bg7', 1, 1) 


makeLuaSprite('bg2', 'backgrounds/graveyard/trees', -550, -150);
addLuaSprite('bg2', true)
scaleObject('bg2', 2,2)
end