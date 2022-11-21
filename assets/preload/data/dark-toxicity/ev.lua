function onStepHit()
	if curStep == 217 then
		setProperty('gf.visible', false)
	end
	if curStep > 2111 then
		setProperty('camZooming', false)
	end
end
function onCreatePost()
	setProperty('gf.visible', false)
end
function onCreate()
	makeLuaSprite('smol', 'unfunny images from close chuckle/smol vod (CREDITS TO ANNIE STARS FOR MAKING THIS JPEG (USED ONE) )', 2200, 1250)
	setScrollFactor('smol', 1.05, 1.05)
	scaleObject('smol', 2, 2)
	
	addLuaSprite('smol', true)
end