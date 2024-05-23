--|              /      |-----------------------------
--|            /        |
--|          /          |
--|        /            |
--|      /              |
--|    /                |
--|  /                  |
--|/                    |-----------------------------
--|\                    |
--|  \                  |
--|    \                |
--|      \              |
--|        \            |
--|          \          |
--|            \        |
--|              \      |-----------------------------



-- Configuration
local version = "1.4.2" -- THIS IS ADDED BECAUSE I DONT HAVE ANYTHING TO DO LOL PUT YOUR WANTED VERSION OF KADE THAT DISPLAYS ON THE INFO TEXT HERE!
-- Version:
--1.0, 1.1, 1.1.1, 1.1.2, 1.1.3, 1.2, 1.2, 1.2.1
--1.2.2, 1.3, 1.3.1, 1.4, 1.4.1, 1.4.2, 1.5, 1.5.1
--1.5.2, 1.5.3, 1.5.4, 1.6, 1.6.1, 1.6.2, 1.7, 1.8

local addJunks = false -- bros in gamebanana recommend this so i add it lol if you have fps cap at 60 it may drop to 50 if low end pc lol




















-- all the script lol

local songended = false
local noteCreated = false
local isPixel = false

function onCreatePost()
    if getPropertyFromClass('PlayState', 'isPixelStage') then 
		isPixel = true
	end

    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('scoreTxt.visible', false)

    local timeY = 20

    if downscroll then
        timeY = 690
    end

    local songNameNoSpace = songName
    local difficultyNameUpper = string.upper(difficultyName:sub(1, 1)) .. difficultyName:sub(2, #difficultyName)

    for i = 1, #songName do
        if songName:sub(i, i) == " " then
            songNameNoSpace = songNameNoSpace:sub(1, i - 1) .. "-" .. songNameNoSpace:sub(i + 1, #songName)
        end
    end

    makeLuaText("timeTxtKade", songNameNoSpace, 0, 600, timeY)
    setProperty('timeTxtKade.visible', false)
    setTextSize('timeTxtKade', 17.5)
    setTextFont("timeTxtKade", "VCR.ttf")

    makeLuaText("scoreTxtKade", '', 0, getProperty('scoreTxt.x') + 362.5, getProperty('scoreTxt.y') + 10)
    
    if version == "1.0" or version == "1.1" or version == "1.1.1" or version == "1.1.2" or version == "1.1.3" or version == "1.2" or version == "1.2.1" or version == "1.3" or version == "1.2.2" or version == "1.3.1" or version == "1.4" or version == "1.4.1" or version == "1.4.2" then
        setTextString('scoreTxtKade', 'Score:0 | Combo Breaks:0 | Accuracy:0% | N/A')
    elseif version == "1.5" or version == "1.5.1" or version == "1.5.2" or version == "1.5.3" or version == "1.5.4" then
        setTextString('scoreTxtKade', 'NPS: 0 | Score:0 | Combo Breaks:0 | Accuracy:0% | N/A')
    else
        setTextString('scoreTxtKade', 'NPS: 0 (Max: 0) | Score:0 | Combo Breaks:0 | Accuracy:0% | N/A')
    end

    setTextSize('scoreTxtKade', 16)
    setTextFont("scoreTxtKade", "VCR.ttf")
    setObjectOrder('scoreTxtKade', 40)

    makeLuaText("infoTxtKade", "", 0, 10, 690)
    
    if version == "1.0" or version == "1.1" or version == "1.1.1" or version == "1.1.2" or version == "1.1.3" or version == "1.2" or version == "1.2.1" or version == "1.3" or version == "1.2.2" or version == "1.3.1" or version == "1.4" or version == "1.4.1" or version == "1.4.2" or version == "1.5" or version == "1.5.1" or version == "1.5.2" or version == "1.5.3" then
        setTextString('infoTxtKade', songNameNoSpace .. " " .. difficultyNameUpper .. " - KE " .. version)
    elseif version == "1.5.4" or version == "1.6" or version == "1.6.1" or version == "1.6.2" or version == "1.7" then
        setTextString('infoTxtKade', songName .. " - " .. difficultyNameUpper .. " | KE " .. version)
    else
        setTextString('infoTxtKade', songName .. " - " .. difficultyNameUpper)
    end
    
    setTextSize('infoTxtKade', 16)
    setTextFont("infoTxtKade", "VCR.ttf")
    setObjectOrder('infoTxtKade', 40)

    makeLuaText("msTxtKade", "69.42ms", 0, 520, 350)
    setProperty('msTxtKade.alpha', 0)
    setTextSize('msTxtKade', 17)
    setTextColor('msTxtKade', '00FFFF')
    setTextFont("msTxtKade", "PixelArial.otf")

    if isPixel then
        setProperty('msTxtKade.y', 400)
    end

    if not hideTime then
        addLuaText("timeTxtKade")
    end

    if not hideHud then
        addLuaText("scoreTxtKade")
        addLuaText("infoTxtKade")
    end

    addLuaText("msTxtKade")
end

function onCreate()
    local Y1 = 19.95
    local Y2 = 24.25

    if downscroll then
        Y1 = 689.95
        Y2 = 694.25
    end

    makeLuaSprite('black', 'black', 299.5, Y1)
    makeLuaSprite('gray', 'gray', 304, Y2)
    makeLuaSprite('green', 'green', 304, Y2)

    setObjectCamera('black', 'hud')
    setObjectCamera('gray', 'hud')
    setObjectCamera('green', 'hud')

    scaleObject('black', 1.99, 0.061)
    scaleObject('gray', 1.965, 0.035)
    scaleObject('green', 1.965, 0.035)

    setObjectOrder('black', 10)
    setObjectOrder('gray', 11)
    setObjectOrder('green', 12)

    setProperty('black.visible', false)
    setProperty('gray.visible', false)
    setProperty('green.visible', false)

    if addJunks then
        for i = 1, 100 do
            makeAnimatedLuaSprite('uselessJunks' .. i, 'characters/BOYFRIEND', 0, 0, 0)
            luaSpriteAddAnimationByPrefix('uselessJunks' .. i, 'idle', 'BF idle dance', 24, true)
            setObjectOrder('uselessJunks' .. i, -1000)
            setProperty('uselessJunks' .. i .. '.alpha', 0.001)
            addLuaSprite('uselessJunks' .. i, false)
        end
    end

    if not hideTime then
        addLuaSprite('black', true)
        addLuaSprite('gray', true)
        addLuaSprite('green', true)
    end
end

local nps = 0
local maxNps = 0
local curNps = 0
local noteHitted = false

function goodNoteHit(id, noteData, noteType, isSustainNote)
    local strumTime = getPropertyFromGroup('notes', id, 'strumTime')
    local songPos = getPropertyFromClass('Conductor', 'songPosition')
    local rOffset = getPropertyFromClass('ClientPrefs','ratingOffset')
    
    local diff = strumTime - songPos + rOffset;
    local msDiffStr = string.format("%.3fms", -diff)

    if not isSustainNote then
        screenCenter('msTxtKade', 'x')
        
        local rated = getRatingType(diff)

        if rated == "GOOD" then
            addScore(-150)
        elseif rated == "BAD" then
            addScore(-350)
        elseif rated == "SHIT" then
            addScore(-650)
            addMisses(1)
        end

        if version == "1.3.1" or version == "1.4" or version == "1.4.1" or version == "1.4.2" or version == "1.5" or version == "1.5.1" or version == "1.5.2" or version == "1.5.3" or version == "1.5.4" or version == "1.6" or version == "1.6.1" or version == "1.6.2" or version == "1.7" or version == "1.8" then
            setTextString('msTxtKade', msDiffStr)
            setProperty('msTxtKade.alpha', 1)
        end

        setTextString('msTxtKade', msDiffStr)
        setTextColor('msTxtKade', colorFromRating(diff))
        doTweenAlpha('msAlpha', 'msTxtKade', 0, 0.5, "quartIn")
        runTimer('removeNoteHit', 1)

        if botPlay then
            if version == "1.3.1" or version == "1.4" or version == "1.4.1" or version == "1.4.2" or version == "1.5" or version == "1.5.1" or version == "1.5.2" or version == "1.5.3" or version == "1.5.4" or version == "1.6" or version == "1.6.1" or version == "1.6.2" or version == "1.7" or version == "1.8" then
                setTextString('msTxtKade', msDiffStr .. " (BOT)")
            end
        end

        if nps > maxNps then
            maxNps = nps
        end

        nps = nps + 1
        noteHitted = false
        runTimer('RN' .. curNps, 1)
        curNps = curNps + 1
    end
end

function onTimerCompleted(tag)
    if string.sub(tag, 1, 2) == "RN" then
        nps = nps - 1
    end
end

function onGameOver()
    songended = true

    return Function_Continue
end

local note0 = false
local note1 = false
local note2 = false
local note3 = false
local latTexture = ""

function onUpdate()
    if version == "1.4.2" or version == "1.5" or version == "1.5.1" or version == "1.5.2" or version == "1.5.3" or version == "1.5.4" or version == "1.6" or version == "1.6.1" or version == "1.6.2" or version == "1.7" or version == "1.8" then
        setPropertyFromClass('lime.app.Application', 'current.window.title', "Friday Night Funkin' Kade Engine")
    end

    if not inGameOver then
        local acc = rating * 100

        if version == "1.0" or version == "1.1" or version == "1.1.1" or version == "1.1.2" or version == "1.1.3" or version == "1.2" or version == "1.2.1" or version == "1.3" or version == "1.2.2" or version == "1.3.1" or version == "1.4" or version == "1.4.1" or version == "1.4.2" or version == "1.5" or version == "1.5.1" or version == "1.5.2" or version == "1.5.3" or version == "1.5.4" then
            if isPixel then
                for i = 0, 3, 1 do
                    local nTexture = "pNOTE_assets"
                    local x = getPropertyFromGroup('opponentStrums', i, 'x')
                    local y = getPropertyFromGroup('opponentStrums', i, 'y')
        
                    if nTexture ~= "texture" then
                        setPropertyFromGroup('opponentStrums', i, 'visible', false)
        
                        if not noteCreated then
                            if i == 0 then
                                makeAnimatedLuaSprite("kadeLEFT", nTexture, x, y)
                                luaSpriteAddAnimationByPrefix('kadeLEFT', 'arrowIdle', 'arrowLEFT', 24, true)
                                setObjectCamera('kadeLEFT', 'hud')
                                setProperty('kadeLEFT.alpha', 0)
                                scaleObject('kadeLEFT', 0.7, 0.7)
                                setObjectOrder('kadeLEFT', 10)
                                addLuaSprite("kadeLEFT")
        
                                note0 = true
                            elseif i == 1 then
                                makeAnimatedLuaSprite("kadeDOWN", nTexture, x, y)
                                luaSpriteAddAnimationByPrefix('kadeDOWN', 'arrowIdle', 'arrowDOWN', 24, true)
                                setObjectCamera('kadeDOWN', 'hud')
                                setProperty('kadeDOWN.alpha', 0)
                                scaleObject('kadeDOWN', 0.7, 0.7)
                                setObjectOrder('kadeDOWN', 10)
                                addLuaSprite("kadeDOWN")
        
                                note1 = true
                            elseif i == 2 then
                                makeAnimatedLuaSprite("kadeUP", nTexture, x - 5.5, y - 1.5)
                                luaSpriteAddAnimationByPrefix('kadeUP', 'arrowIdle', 'arrowUP', 24, true)
                                setObjectCamera('kadeUP', 'hud')
                                setProperty('kadeUP.alpha', 0)
                                scaleObject('kadeUP', 0.7, 0.7)
                                setObjectOrder('kadeUP', 10)
                                addLuaSprite("kadeUP")
        
                                note2 = true
                            elseif i == 3 then
                                makeAnimatedLuaSprite("kadeRIGHT", nTexture, x - 2.5, y - 1.5)
                                luaSpriteAddAnimationByPrefix('kadeRIGHT', 'arrowIdle', 'arrowRIGHT', 24, true)
                                setObjectCamera('kadeRIGHT', 'hud')
                                setProperty('kadeRIGHT.alpha', 0)
                                scaleObject('kadeRIGHT', 0.7, 0.7)
                                setObjectOrder('kadeRIGHT', 10)
                                addLuaSprite("kadeRIGHT")
        
                                note3 = true
                            end
                        end
                    end
                end
            else
                for i = 0, 3, 1 do
                    local nTexture = getPropertyFromGroup('opponentStrums', 0, 'texture')
                    local x = getPropertyFromGroup('opponentStrums', i, 'x')
                    local y = getPropertyFromGroup('opponentStrums', i, 'y')
        
                    if nTexture ~= "texture" then
                        setPropertyFromGroup('opponentStrums', i, 'visible', false)
        
                        if not noteCreated then
                            if i == 0 then
                                makeAnimatedLuaSprite("kadeLEFT", nTexture, x, y)
                                luaSpriteAddAnimationByPrefix('kadeLEFT', 'arrowIdle', 'arrowLEFT', 24, true)
                                setObjectCamera('kadeLEFT', 'hud')
                                setProperty('kadeLEFT.alpha', 0)
                                scaleObject('kadeLEFT', 0.7, 0.7)
                                setObjectOrder('kadeLEFT', 10)
                                addLuaSprite("kadeLEFT")
        
                                note0 = true
                            elseif i == 1 then
                                makeAnimatedLuaSprite("kadeDOWN", nTexture, x, y)
                                luaSpriteAddAnimationByPrefix('kadeDOWN', 'arrowIdle', 'arrowDOWN', 24, true)
                                setObjectCamera('kadeDOWN', 'hud')
                                setProperty('kadeDOWN.alpha', 0)
                                scaleObject('kadeDOWN', 0.7, 0.7)
                                setObjectOrder('kadeDOWN', 10)
                                addLuaSprite("kadeDOWN")
        
                                note1 = true
                            elseif i == 2 then
                                makeAnimatedLuaSprite("kadeUP", nTexture, x, y)
                                luaSpriteAddAnimationByPrefix('kadeUP', 'arrowIdle', 'arrowUP', 24, true)
                                setObjectCamera('kadeUP', 'hud')
                                setProperty('kadeUP.alpha', 0)
                                scaleObject('kadeUP', 0.7, 0.7)
                                setObjectOrder('kadeUP', 10)
                                addLuaSprite("kadeUP")
        
                                note2 = true
                            elseif i == 3 then
                                makeAnimatedLuaSprite("kadeRIGHT", nTexture, x, y)
                                luaSpriteAddAnimationByPrefix('kadeRIGHT', 'arrowIdle', 'arrowRIGHT', 24, true)
                                setObjectCamera('kadeRIGHT', 'hud')
                                setProperty('kadeRIGHT.alpha', 0)
                                scaleObject('kadeRIGHT', 0.7, 0.7)
                                setObjectOrder('kadeRIGHT', 10)
                                addLuaSprite("kadeRIGHT")
        
                                note3 = true
                            end
                        end
                    end
                end
            end
    
            if note0 == true and note1 == true and note2 == true and note3 == true then
                noteCreated = true
                lastTexture = getPropertyFromGroup('opponentStrums', 0, 'texture')
            end
    
            if noteCreated == true then
                local nTexture = getPropertyFromGroup('opponentStrums', 0, 'texture')
                local newSize = 0.7
    
                if isPixel then
                    nTexture = "pNOTE_assets"
                end
    
                if luaSpriteExists('kadeLEFT') then
                    local mySprite = 'kadeLEFT'
                    local noteNum = 0
                    setProperty(mySprite .. '.x', getPropertyFromGroup('opponentStrums', noteNum, 'x'))
                    setProperty(mySprite .. '.y', getPropertyFromGroup('opponentStrums', noteNum, 'y'))
                    setProperty(mySprite .. '.alpha', getPropertyFromGroup('opponentStrums', noteNum, 'alpha'))
                    setProperty(mySprite .. '.angle', getPropertyFromGroup('opponentStrums', noteNum, 'angle'))
                    --setProperty(mySprite .. '.visible', getPropertyFromGroup('opponentStrums', noteNum, 'visible'))
                end
    
                if luaSpriteExists('kadeDOWN') then
                    local mySprite = 'kadeDOWN'
                    local noteNum = 1
                    setProperty(mySprite .. '.x', getPropertyFromGroup('opponentStrums', noteNum, 'x'))
                    setProperty(mySprite .. '.y', getPropertyFromGroup('opponentStrums', noteNum, 'y'))
                    setProperty(mySprite .. '.alpha', getPropertyFromGroup('opponentStrums', noteNum, 'alpha'))
                    setProperty(mySprite .. '.angle', getPropertyFromGroup('opponentStrums', noteNum, 'angle'))
                end
        
                if isPixel then
                    if luaSpriteExists('kadeUP') then
                        local mySprite = 'kadeUP'
                        local noteNum = 2
                        setProperty(mySprite .. '.x', getPropertyFromGroup('opponentStrums', noteNum, 'x') - 5.5)
                        setProperty(mySprite .. '.y', getPropertyFromGroup('opponentStrums', noteNum, 'y') - 1.5)
                        setProperty(mySprite .. '.alpha', getPropertyFromGroup('opponentStrums', noteNum, 'alpha'))
                        setProperty(mySprite .. '.angle', getPropertyFromGroup('opponentStrums', noteNum, 'angle'))
                    end
    
                    if luaSpriteExists('kadeRIGHT') then
                        local mySprite = 'kadeRIGHT'
                        local noteNum = 3
                        setProperty(mySprite .. '.x', getPropertyFromGroup('opponentStrums', noteNum, 'x') - 2.5)
                        setProperty(mySprite .. '.y', getPropertyFromGroup('opponentStrums', noteNum, 'y') - 1.5)
                        setProperty(mySprite .. '.alpha', getPropertyFromGroup('opponentStrums', noteNum, 'alpha'))
                        setProperty(mySprite .. '.angle', getPropertyFromGroup('opponentStrums', noteNum, 'angle'))
                    end
                else
                    if luaSpriteExists('kadeUP') then
                        local mySprite = 'kadeUP'
                        local noteNum = 2
                        setProperty(mySprite .. '.x', getPropertyFromGroup('opponentStrums', noteNum, 'x'))
                        setProperty(mySprite .. '.y', getPropertyFromGroup('opponentStrums', noteNum, 'y'))
                        setProperty(mySprite .. '.alpha', getPropertyFromGroup('opponentStrums', noteNum, 'alpha'))
                        setProperty(mySprite .. '.angle', getPropertyFromGroup('opponentStrums', noteNum, 'angle'))
                    end
                    
                    if luaSpriteExists('kadeRIGHT') then
                        local mySprite = 'kadeRIGHT'
                        local noteNum = 3
                        setProperty(mySprite .. '.x', getPropertyFromGroup('opponentStrums', noteNum, 'x'))
                        setProperty(mySprite .. '.y', getPropertyFromGroup('opponentStrums', noteNum, 'y'))
                        setProperty(mySprite .. '.alpha', getPropertyFromGroup('opponentStrums', noteNum, 'alpha'))
                        setProperty(mySprite .. '.angle', getPropertyFromGroup('opponentStrums', noteNum, 'angle'))
                    end
                end
    
                if isPixel == false then
                    if lastTexture ~= nTexture then
                        debugPrint(lastTexture  .. " | " .. nTexture)
                        removeLuaSprite('kadeLEFT', true)
                        removeLuaSprite('kadeDOWN', true)
                        removeLuaSprite('kadeUP', true)
                        removeLuaSprite('kadeRIGHT', true)
                        
                        for i = 0, 3, 1 do
                            local nTexture = getPropertyFromGroup('opponentStrums', 0, 'texture')
                            local x = getPropertyFromGroup('opponentStrums', i, 'x')
                            local y = getPropertyFromGroup('opponentStrums', i, 'y')
                
                            if nTexture ~= "texture" then
                                setPropertyFromGroup('opponentStrums', i, 'visible', false)
                
                                if not noteCreated then
                                    if i == 0 then
                                        makeAnimatedLuaSprite("kadeLEFT", nTexture, x, y)
                                        luaSpriteAddAnimationByPrefix('kadeLEFT', 'arrowIdle', 'arrowLEFT', 24, true)
                                        setObjectCamera('kadeLEFT', 'hud')
                                        setProperty('kadeLEFT.alpha', 0)
                                        scaleObject('kadeLEFT', 0.7, 0.7)
                                        setObjectOrder('kadeLEFT', 10)
                                        addLuaSprite("kadeLEFT")
                                    elseif i == 1 then
                                        makeAnimatedLuaSprite("kadeDOWN", nTexture, x, y)
                                        luaSpriteAddAnimationByPrefix('kadeDOWN', 'arrowIdle', 'arrowDOWN', 24, true)
                                        setObjectCamera('kadeDOWN', 'hud')
                                        setProperty('kadeDOWN.alpha', 0)
                                        scaleObject('kadeDOWN', 0.7, 0.7)
                                        setObjectOrder('kadeDOWN', 10)
                                        addLuaSprite("kadeDOWN")
                                    elseif i == 2 then
                                        makeAnimatedLuaSprite("kadeUP", nTexture, x, y)
                                        luaSpriteAddAnimationByPrefix('kadeUP', 'arrowIdle', 'arrowUP', 24, true)
                                        setObjectCamera('kadeUP', 'hud')
                                        setProperty('kadeUP.alpha', 0)
                                        scaleObject('kadeUP', 0.7, 0.7)
                                        setObjectOrder('kadeUP', 10)
                                        addLuaSprite("kadeUP")
                                    elseif i == 3 then
                                        makeAnimatedLuaSprite("kadeRIGHT", nTexture, x, y)
                                        luaSpriteAddAnimationByPrefix('kadeRIGHT', 'arrowIdle', 'arrowRIGHT', 24, true)
                                        setObjectCamera('kadeRIGHT', 'hud')
                                        setProperty('kadeRIGHT.alpha', 0)
                                        scaleObject('kadeRIGHT', 0.7, 0.7)
                                        setObjectOrder('kadeRIGHT', 10)
                                        addLuaSprite("kadeRIGHT")
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    
        if getProperty("songPercent") > 0 then
            setProperty('black.visible', true)
            setProperty('gray.visible', true)
            setProperty('green.visible', true)
            setProperty('timeTxtKade.visible', true)
        end

        scaleObject('green', 1.965 * getProperty("songPercent"), 0.035)
    
        local fctext = getProperty('ratingFC')
    
        if fctext == "SFC" then
            fctext = "MFC"
        end
    
        local calculatedtype = ""

        if acc == 100 then
            calculatedtype = 'AAAAA'
        elseif acc >= 95 then
            calculatedtype = 'AAAA'
        elseif acc >= 90 then
            calculatedtype = 'AAA'
        elseif acc >= 85 then
            calculatedtype = 'AA'
        elseif acc >= 80 then
            calculatedtype = 'A'
        elseif acc >= 60 then
            calculatedtype = 'B'
        elseif acc >= 40 then
            calculatedtype = 'C'
        elseif acc >= 20 then
            calculatedtype = 'D'
        elseif acc >= 0 then
            calculatedtype = 'F'
        end

        if nps < 0 then
            nps = 0
            noteHitted = false
        end

        if nps > maxNps then
            maxNps = nps
        end

        if version == "1.5" or version == "1.5.1" or version == "1.5.2" or version == "1.5.3" or version == "1.5.4" or version == "1.6" or version == "1.7" or version == "1.8" then
            screenCenter('scoreTxtKade', 'x')
        end
    
        if hits > 0 then
            if version == "1.0" or version == "1.1" or version == "1.1.1" or version == "1.1.2" or version == "1.1.3" or version == "1.2" or version == "1.2.1" or version == "1.3" or version == "1.2.2" or version == "1.3.1" or version == "1.4" or version == "1.4.1" or version == "1.4.2" then
                setTextString('scoreTxtKade', "Score:" .. score .. " | Combo Breaks:" .. misses .. " | Accuracy:" .. math.floor(acc * 100) / 100 .. "% | (" .. fctext .. ") " .. calculatedtype)
            elseif version == "1.5" or version == "1.5.1" or version == "1.5.2" or version == "1.5.3" or version == "1.5.4" then
                setTextString('scoreTxtKade', "NPS: " .. nps .. " | Score:" .. score .. " | Combo Breaks:" .. misses .. " | Accuracy:" .. math.floor(acc * 100) / 100 .. "% | (" .. fctext .. ") " .. calculatedtype)
            else
                setTextString('scoreTxtKade', "NPS: " .. nps .. " (Max: " .. maxNps .. ") | Score:" .. score .. " | Combo Breaks:" .. misses .. " | Accuracy:" .. math.floor(acc * 100) / 100 .. "% | (" .. fctext .. ") " .. calculatedtype)
            end
        else
            if version == "1.0" or version == "1.1" or version == "1.1.1" or version == "1.1.2" or version == "1.1.3" or version == "1.2" or version == "1.2.1" or version == "1.3" or version == "1.2.2" or version == "1.3.1" or version == "1.4" or version == "1.4.1" or version == "1.4.2" then
                setTextString('scoreTxtKade', 'Score:0 | Combo Breaks:0 | Accuracy:0% | N/A')
            elseif version == "1.5" or version == "1.5.1" or version == "1.5.2" or version == "1.5.3" or version == "1.5.4" then
                setTextString('scoreTxtKade', 'NPS: 0 | Score:0 | Combo Breaks:0 | Accuracy:0% | N/A')
            elseif version == "1.6" or version == "1.6.1" or version == "1.6.2" or version == "1.7" then
                setTextString('scoreTxtKade', 'NPS: 0 (Max: 0) | Score:0 | Combo Breaks:0 | Accuracy:0% | N/A')
            else
                setTextString('scoreTxtKade', '')
            end
        end
    end
end

function onUpdatePost()
    if songended == false then
        local songNameNoSpace = songName
        local difficultyNameUpper = string.upper(difficultyName:sub(1, 1)) .. difficultyName:sub(2, #difficultyName)
    
        for i = 1, #songName do
            if songName:sub(i, i) == " " then
                songNameNoSpace = songNameNoSpace:sub(1, i - 1) .. "-" .. songNameNoSpace:sub(i + 1, #songName)
            end
        end
    end

    if version ~= "1.7" and version ~= "1.8" then
        for i = 0, getProperty('grpNoteSplashes.length') - 1 do
            setPropertyFromGroup('grpNoteSplashes', i, 'visible', false)
        end
    end
end

function onDestroy()
    songended = true
    setPropertyFromClass('lime.app.Application', 'current.window.title', "Friday Night Funkin': Psych Engine")
end

function colorFromRating(diff)
    local absDiff = math.abs(diff)

    if absDiff < 46.0 then
        return '00FFFF'
    elseif absDiff < 91.0 then
        return '006400'
    elseif absDiff < 136.0 then
        return 'FFFF00'
    else
        return 'FF0000'
    end
end

function getRatingType(diff)
    local absDiff = math.abs(diff)

    if absDiff < 46.0 then
        return 'SICK'
    elseif absDiff < 91.0 then
        return 'GOOD'
    elseif absDiff < 136.0 then
        return 'BAD'
    else
        return 'SHIT'
    end
end