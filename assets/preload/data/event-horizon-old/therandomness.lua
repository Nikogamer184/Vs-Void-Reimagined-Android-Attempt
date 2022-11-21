function onCreate()
precacheSound('vodappear')
addCharacterToList('vodreal')
addCharacterToList('void-old')
end
function onStepHit()
	if curStep == 28 then
	if randomspawn >= 80 then
		playSound('vodappear', 1)
		triggerEvent('Change Character', '1', 'vodreal')
	end
	end
	if curStep == 544 then
		if dadName == 'vodreal' then
		triggerEvent('Change Character', '1', 'void-old')
		playSound('vodappear', 1)
		end
	end
end
function onUpdate()
	randomspawn = math.random(1,100)
end