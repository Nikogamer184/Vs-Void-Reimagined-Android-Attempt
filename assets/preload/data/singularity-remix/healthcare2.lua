function onStepHit()
	health = getProperty('health')
	if getProperty('health') > 0.05 then
		if curBeat > 583 and curBeat < 680 then
               setProperty('health', health- 0.005)
        end
	end
            if getProperty('dad.animation.curAnim.name') == 'defeat' then
                setProperty('health', health- -20)
            end
            if getProperty('dad.animation.curAnim.name') == 'defeatend' then
                setProperty('health', health- -20)
            end
end