function onCreate()
    makeLuaSprite("funnyWhite", "", -2400, -800)
    makeGraphic("funnyWhite", 8000, 6000, "0xFFFFFFFF")
    addLuaSprite("funnyWhite", false)

    setProperty('healthBar.flipX', true)
end
