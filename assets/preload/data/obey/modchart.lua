local bfOriginX = 0
local bfOriginY = 0
local bfOriginWidth = 0
local defaultOpponentStrumAlpha = 1
function onCreate()
    if middlescroll then
        defaultOpponentStrumAlpha = 0.35
    end
    setProperty('skipCredit', true)
    setProperty('camZooming', true)
    setProperty('camZoomingMult', 0)
    setProperty('camZoomingDecay', 0.25)
    setProperty('gfSpeed', 2)
    setProperty('cameraSpeed', 100)

end

function onCreatePost()    
    bfOriginX = getCharacterX('boyfriend')
    bfOriginY = getCharacterY('boyfriend')
    bfOriginWidth = getProperty('boyfriend.width')
end

local angleshit = 1;
local anglevar = 1;

function onBeatHit()
    if (curBeat >= 100 and curBeat < 128) or (curBeat >= 132 and curBeat < 164) or (curBeat >= 264 and curBeat < 330) or (curBeat >= 392 and curBeat < 420) or (curBeat >= 648 and curBeat < 712) then
        triggerEvent('Add Camera Zoom') 
    end
    if (curBeat >= 164 and curBeat < 196) or (curBeat >= 424 and curBeat < 440) or (curBeat >= 445 and curBeat < 454) or (curBeat >= 456 and curBeat < 472) or (curBeat >= 477 and curBeat < 484) then
        triggerEvent('Add Camera Zoom', '0.03', '0.06') 
    end
    if (curBeat >= 228 and curBeat < 260) and curBeat % 2 == 0 then
        ytpBFHell()
    end
    if curBeat >= 520 and curBeat < 648 then   
		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*3)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		--doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
	end
    if curBeat == 1 then
        doTweenY('opening1Out', 'opening1', -screenHeight / 2, 0.5, 'quadOut')
        doTweenY('opening2Out', 'opening2', screenHeight, 0.5, 'quadOut')
        setProperty('cameraSpeed', 1) --lel
    end
    if curBeat == 68 then
        setProperty('camZoomingMult', 1)
        setProperty('camZoomingDecay', 1)
        setProperty('gfSpeed', 1)
    end
    if curBeat == 196 or curBeat == 648 then
        cameraFlash('game', '0xFF000000', 1)
    end

    if curBeat == 360 then 
        setProperty('camZoomingDecay', 0.075)
        setProperty('cameraSpeed', 100)

        setProperty('shipParticles.emitting', true)
        setProperty('gf.visible', false)
        setScrollFactor('dad', 0.8, 0.8)
        setScrollFactor('dadGhost', 0.8, 0.8)

        doTweenAlpha('opening1ReuseOff', 'opening1', 0, 10, 'linear')
        doTweenAlpha('opening2ReuseOff', 'opening2', 0, 10, 'linear')
        
		setProperty('omegaWeegeeLightBig.x', getProperty('dad.x') -62)
		setProperty('omegaWeegeeLightBig.y', getProperty('dad.y') -84)
		setProperty('omegaWeegeeLightSmall.x', getProperty('dad.x') -14)
		setProperty('omegaWeegeeLightSmall.y', getProperty('dad.y') -68)
		setProperty('omegaWeegeeFaces.x', getProperty('dad.x') + 508)
		setProperty('omegaWeegeeFaces.y', getProperty('dad.y') + 50)
        setProperty('omegaWeegeeFaces.alpha', 1)
        setProperty('bubbles.alpha', 0.00001)
    end
    if curBeat == 364 then
        setProperty('cameraSpeed', 1)
    end
    if curBeat == 392 then
        setProperty('camZoomingMult', 1)
        setProperty('camZoomingDecay', 1)
    end
    if curBeat == 488 then
        setProperty('camZoomingMult', 0)
    end
    end

function onUpdate(elapsed)
if curBeat >= 392 and curBeat < 488 then
        if mustHitSection then
            setProperty('defaultCamZoom', 0.6)
        else
            setProperty('defaultCamZoom', 0.4)
        end
    end
if curBeat > 520 then
        if mustHitSection then
            setProperty('defaultCamZoom', 0.5)
        elseif gfSection then
            setProperty('defaultCamZoom', 0.5)
        else
            setProperty('defaultCamZoom', 0.4)
        end
    end
end

function onTweenCompleted(tag)
    if tag == 'bfPeek0' then
        doTweenY('bfPeekEnd', 'boyfriend', screenHeight, 0.46, 'sineInOut')
    end
    if tag == 'bfPeek1' then
        doTweenY('bfPeekEnd', 'boyfriend', screenHeight, 0.46, 'sineInOut')
    end
    if tag == 'bfPeek2' then
        doTweenY('bfPeekEnd', 'boyfriend', -getProperty('boyfriend.height'), 0.46, 'sineInOut')
    end
    if tag == 'bfPeek3' then
        doTweenY('bfPeekEnd', 'boyfriend', -getProperty('boyfriend.height'), 0.46, 'sineInOut')
    end
end