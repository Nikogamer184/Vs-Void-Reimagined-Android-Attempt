function onCreate()
	if not hideHud then
	makeAnimatedLuaSprite('icon3', nil, getProperty('iconP2.x'), getProperty('iconP2.y'))
	loadGraphic('icon3', 'icons/icon-'..getProperty('gf.healthIcon'), 150)
	addAnimation('icon3', 'icons/icon-'..getProperty('gf.healthIcon'), {0, 1}, 0, true)
	addAnimation('icon3', 'icons/icon-'..getProperty('gf.healthIcon'), {1, 0}, 0, true)
	addLuaSprite('icon3', true)
	--setProperty('icon3.antialiasing', false)
	setObjectOrder('icon3', getObjectOrder('iconP2') + 1)
	setObjectCamera('icon3', 'hud')
	end
end
function onUpdatePost()
	if not hideHud then
	setProperty('icon3.y', getProperty('iconP2.y') - 50)
	if downscroll then
	setProperty('icon3.y', getProperty('iconP2.y') + 50)
	end
	setProperty('icon3.x', getProperty('iconP2.x') - 50)
	setProperty('icon3.scale.x', getProperty('iconP2.scale.x') - 0.15)
	setProperty('icon3.scale.y', getProperty('iconP2.scale.y') - 0.15)
	setProperty('icon3.angle', getProperty('iconP2.angle'))
	end
	if getProperty('health') > 1.6 then
		setProperty('icon3.animation.curAnim.curFrame', '1')
	else
		setProperty('icon3.animation.curAnim.curFrame', '0')
	end
end
function opponentNoteHit()
	health = getProperty('health')
		if getProperty('health') > 0.05 then
			setProperty('health', health- -0.005);
		end
				if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
					setProperty('health', health- -0.01)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
					setProperty('health', health- -0.01)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
					setProperty('health', health- -0.01)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
					setProperty('health', health- -0.01)
				end
end