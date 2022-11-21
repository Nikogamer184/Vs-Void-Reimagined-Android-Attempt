local totalRage = false
local passiveRage = false
local shakeAdd = 0
local shakey = 0
function opponentNoteHit()
	shakey = 2
end
function onStepHit()
	if curStep == 282 then
		totalRage = true
	end
	if curStep == 287 then
		totalRage = false
	end
	if curStep == 544 then
		passiveRage = true
		totalRage = true
		shakeAdd = 3
	end
	if curStep == 799 then
		totalRage = false
	end
	if curStep == 924 then
		totalRage = true
	end
	if curStep == 928 then
		totalRage = false
	end
	if curStep == 1560 then
		totalRage = true
	end
	if curStep == 1568 then
		totalRage = false
		passiveRage = false
		shakeAdd = 0
	end
	if curStep == 1824 then
		totalRage = true
		passiveRage = true
		shakeAdd = 3
	end
	if curStep == 1872 then
		totalRage = false
	end
	if curStep == 2080 then
		passiveRage = false
		shakeAdd = 0
	end
	if curStep == 2336 then
		passiveRage = true
		shakeAdd = 6
	end
	if curStep == 2464 then
		totalRage = true
	end
	if curStep == 2512 then
		totalRage = false
	end
	if curStep == 2528 then
		totalRage = true
	end
	if curStep == 2576 then
		totalRage = false
	end
	if curStep == 2848 then
		passiveRage = false
		shakeAdd = 0
	end
	if curStep == 2856 then
		totalRage = true
	end
	if curStep == 2912 then
		totalRage = false
	end
end
function onUpdate(elapsed)
   local doShake = shakey
   local HHH = shakeAdd
   shakey = lerp(shakey, 0 ,elapsed * 10)
   setStringAngle = math.random(-shakey,shakey)
   if passiveRage == true then
      setProperty("camHUD.x", getRandomFloat(-HHH + 0.00, (HHH + 0.00)))
	end
	if totalRage == true then
      setProperty("camGame.angle", getRandomFloat(-doShake + 0.00, (doShake + 0.00)))
      setProperty("camHUD.angle", getRandomFloat(-doShake + 0.00, (doShake/2 + 0.00)))
	end
	if totalRage == false then
		doTweenAngle('gobackpleaseaseaythankss', 'camHUD', 0, 1, 'sineOut')
		doTweenAngle('gobackpleaseaseaythanks', 'camGame', 0, 2, 'sineInOut')
	end
end
function lerp(a, b, t)
	return a + (b - a) * t
end