local epicCoolCameraShit = true;
function onCreate()
setProperty('skipCountdown', true)
makeLuaSprite('bg1', 'backgrounds/troll-house//bg', -650, -350);
addLuaSprite('bg1', false)
scaleObject('bg1', 2,2)

makeLuaSprite('bg2', 'backgrounds/troll-house/deskShit', -530, 290);
addLuaSprite('bg2', false)
scaleObject('bg2', 1.9, 1.9)
end

function onBeatHit()
    if curBeat == 271 or curBeat == 755 or curBeat == 851 then -- one beat less than the real one because yes
        epicCoolCameraShit = false
    end
    if curBeat == 500 or curBeat == 788 then
        epicCoolCameraShit = true
    end
    if curBeat == 16 then
        doTweenY('timebarLeave', 'timeBar', 1500, 4, 'quadOut')
     end
     if curBeat == 20 then
        doTweenAlpha('timeTxtFade', 'timeTxt', 0, 1, 'quadOut') 
     end
     if curBeat == 494 then
        setProperty('camHUD.angle', 0)
     end
     if curBeat == 500 then
        setProperty('camHUD.alpha', 1)
    end
end

function onUpdate()
    if epicCoolCameraShit == true then
        if mustHitSection then
            setProperty('defaultCamZoom', 0.9)
        else
            setProperty('defaultCamZoom', 0.7)
        end
    end
end

function onUpdatePost(elapsed)
    setProperty('timeTxt.text', 'NOPE')
end

function onSongStart()
cameraFlash('game', '000000', '2')
doTweenZoom('zoom1', 'camGame', 0.9, 3, 'sineOut')
setProperty('defaultCamZoom', 0.9)
end