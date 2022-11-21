function onCreate()
	if not hideHud then
	makeAnimatedLuaSprite('iconamong', 'newvoid', 0, 0)
	addAnimationByPrefix('iconamong', 'bloop', 'he go bloop', 24, true)
	objectPlayAnimation('iconamong', 'bloop', true)
	addLuaSprite('iconamong', true)
	setObjectCamera('iconamong', 'hud')
	
	makeAnimatedLuaSprite('iconamong-lose', 'newvoid-lose', 0, 0)
	addAnimationByPrefix('iconamong-lose', 'bloop', 'he go bloop', 24, true)
	objectPlayAnimation('iconamong-lose', 'bloop', true)
	addLuaSprite('iconamong-lose', true)
	setObjectCamera('iconamong-lose', 'hud')
	setProperty('iconamong-lose.visible', false)
	--setProperty('icon3.antialiasing', false)
	end
end
function onCreatePost()
	setObjectOrder('iconamong', getObjectOrder('iconP2') + 1)
	setObjectOrder('iconamong-lose', getObjectOrder('iconP2') + 1)
	setProperty('iconP2.visible', false)
end
function onUpdatePost()
	if not hideHud then
	setProperty('iconamong.y', getProperty('iconP2.y'))
	setProperty('iconamong-lose.y', getProperty('iconP2.y'))
	if downscroll then
	setProperty('iconamong.y', getProperty('iconP2.y'))
	setProperty('iconamong-lose.y', getProperty('iconP2.y'))
	end
	setProperty('iconamong.x', getProperty('iconP2.x'))
	setProperty('iconamong.scale.x', getProperty('iconP2.scale.x'))
	setProperty('iconamong.scale.y', getProperty('iconP2.scale.y'))
	setProperty('iconamong.angle', getProperty('iconP2.angle'))
	setProperty('iconamong.alpha', getProperty('iconP2.alpha'))
	
	setProperty('iconamong-lose.x', getProperty('iconP2.x'))
	setProperty('iconamong-lose.scale.x', getProperty('iconP2.scale.x'))
	setProperty('iconamong-lose.scale.y', getProperty('iconP2.scale.y'))
	setProperty('iconamong-lose.angle', getProperty('iconP2.angle'))
	setProperty('iconamong-lose.alpha', getProperty('iconP2.alpha'))
	end
end
function onUpdate()
			if getProperty('health') >= 1.625 then
				setProperty('iconamong.visible', false)
				setProperty('iconamong-lose.visible', true)
			else
				setProperty('iconamong.visible', true)
				setProperty('iconamong-lose.visible', false)
			end
end