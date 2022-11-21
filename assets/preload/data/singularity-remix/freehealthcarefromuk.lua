function opponentNoteHit()
	health = getProperty('health')
		if getProperty('health') > 0.05 then
				if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
					setProperty('health', health- 0.01)           
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
					setProperty('health', health- 0.01)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
					setProperty('health', health- 0.01)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
					setProperty('health', health- 0.01)
				end
				if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                setProperty('health', health- 0.005)           
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                setProperty('health', health- 0.005)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                setProperty('health', health- 0.005)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP' then
                setProperty('health', health- 0.005)
				end
				if getProperty('dad.animation.curAnim.name') == 'scream' then
                setProperty('health', health- 0.035)
				end
				if getProperty('dad.animation.curAnim.name') == 'blackhole' then
                setProperty('health', health- 0.01)
				end
		end
				if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
				triggerEvent('Screen Shake', '0.1, 0.003', '0.1, 0.003');
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
				triggerEvent('Screen Shake', '0.1, 0.003', '0.1, 0.003');
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
				triggerEvent('Screen Shake', '0.1, 0.003', '0.1, 0.003');
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
				triggerEvent('Screen Shake', '0.1, 0.003', '0.1, 0.003');
				end
end