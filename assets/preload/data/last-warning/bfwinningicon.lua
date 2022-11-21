--Script by _Boxed!
--Script fixed by Shokora! Big thanks to them!
function onCreate()
	precacheImage('icons/win-')
	makeLuaSprite('winningIcon2', 'icons/win-'..getProperty('gf.healthIcon'), getProperty('icon3.x'), getProperty('icon3.y'))
	setObjectCamera('winningIcon2', 'hud')
	addLuaSprite('winningIcon2', true)
	setObjectOrder('winningIcon2', getObjectOrder('iconP1') + 1)
	setProperty('winningIcon2.flipX', true)
	setProperty('winningIcon2.visible', false)
end
function onUpdate(elapsed)
		
		
		--debugPrint(getProperty('iconP1.animation.curAnim.name')) --debug
		
		--WHITELIST add more characters if you wish
		--if bf == 'bf' or bf =='bf' or bf =='bf' or bf =='bf' --WHITELIST - comment '--' to disable, uncomment to enable
		--BLACKLIST add more characters if you wish
		--if not bf =='bf' or bf =='bf' or bf =='bf' or bf =='bf' --BLACKLIST - comment '--' to disable, uncomment to enable
		--then --uncomment if using WHITELIST or BLACKLIST
		
			setProperty('winningIcon2.x', getProperty('icon3.x'))
			setProperty('winningIcon2.angle', getProperty('icon3.angle'))
			setProperty('winningIcon2.y', getProperty('icon3.y'))
			setProperty('winningIcon2.scale.x', getProperty('icon3.scale.x'))
			setProperty('winningIcon2.scale.y', getProperty('icon3.scale.y'))
			setProperty('winningIcon2.alpha', getProperty('icon3.alpha'))
			if getProperty('health') >= 1.625 then
				setProperty('icon3.visible', false)
				setProperty('winningIcon2.visible', true)
			else
				setProperty('icon3.visible', true)
				setProperty('winningIcon2.visible', false)
			end
		--end --uncomment if using WHITELIST or BLACKLIST
end