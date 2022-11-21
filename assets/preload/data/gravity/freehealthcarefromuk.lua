function opponentNoteHit()
	health = getProperty('health')
		if dadName == 'void-crazy' then
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
		end
		end
		if dadName == 'void-angy' then
		if getProperty('health') > 0.05 then
				if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
					setProperty('health', health- 0.009)           
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
					setProperty('health', health- 0.009)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
					setProperty('health', health- 0.009)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
					setProperty('health', health- 0.009)
				end
				if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                setProperty('health', health- 0.004)           
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                setProperty('health', health- 0.004)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                setProperty('health', health- 0.004)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP' then
                setProperty('health', health- 0.004)
				end
		end
		end
end