-- we cant have people locked out of the mod can we?
-- Fuck Story Mode

function onCreate()

        setProperty('healthBar.alpha', 0)
        setProperty('canReset', false)
        
        makeLuaSprite('logo', 'logo', 0, 0)
        setObjectCamera("logo", 'hud')
        screenCenter('logo')
        setProperty("logo.alpha", 0.00001)
        addLuaSprite('logo', true)
end

function onUpdatePost()

        setProperty('health', 1)
end

function onBeatHit()

        if curBeat == 200 then
            setProperty("logo.alpha", 1)
            doTweenX('logoScaleX', 'logo.scale', 0.5, 1, 'backOut')
            doTweenY('logoScaleY', 'logo.scale', 0.5, 1, 'backOut')
        end
end