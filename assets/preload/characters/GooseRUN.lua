local x = 259
local y = 40

function onCreate()
    makeAnimatedLuaSprite('gooseBODY', 'characters/goose RUN', getProperty('dad.x') + x, getProperty('dad.y') + y)
	objectPlayAnimation('gooseBODY',' run', true)
    addAnimationByPrefix('gooseBODY', 'run', 'goose run', 30, true)
    addAnimationByPrefix('gooseBODY', 'run2', 'goose run', 36, true)
    addLuaSprite('gooseBODY', false)
end

function onUpdate()
	if curStep == 1024 then
            objectPlayAnimation('gooseBODY', 'run2', true)
	end
    setProperty('gooseBODY.alpha', getProperty('dad.alpha'))
    setProperty('gooseBODY.visible', getProperty('dad.visible'))
    setProperty('gooseBODY.x', getProperty('dad.x') + x)
    setProperty('gooseBODY.y', getProperty('dad.y') + y)
end