function onCreate()

makeLuaSprite('bg', 'backgrounds/imposter/bg', -5850, -3550);
addLuaSprite('bg', false)
scaleObject('bg', 8, 8)

runTimer('angle1',8)
end

local epicCoolCameraShit = true;
function onUpdate()
    if epicCoolCameraShit == true then
        if mustHitSection then
            setProperty('defaultCamZoom', 0.8)
        else
            setProperty('defaultCamZoom', 0.3)
        end
    end
end

function onTimerCompleted(t,l,ll)
if t == 'angle1' then
doTweenAngle('AngleBG', 'bg', 10000, 1000, 'linear')
runTimer('angle1',8)
end
end
