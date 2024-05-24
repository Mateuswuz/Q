local epicCoolCameraShit = true;
function onCreate()
makeLuaSprite('bg', 'backgrounds/troll-house-old/bg', -550, -250);
addLuaSprite('bg', false)
scaleObject('bg', 2,2)

makeAnimatedLuaSprite('bg2', 'backgrounds/troll-house-old/office', -150, 150);
addAnimationByPrefix('bg2', 'Bottom Level Boppers', 'Bottom Level Boppers0000', 30, true)
addLuaSprite('bg2', false)
scaleObject('bg2', 1,1) 
end
function onUpdate()
    if epicCoolCameraShit == true then
        if mustHitSection then
            setProperty('defaultCamZoom', 1.1)
        else
            setProperty('defaultCamZoom', 0.8)
        end
    end
end