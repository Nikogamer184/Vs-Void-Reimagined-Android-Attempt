local totalRage = false
local shakey = 0
local shakeAdd = 0
function opponentNoteHit()
	shakey = 1
end
function onStepHit()
	if curStep == 1026 then
		totalRage = true
	end
	if curStep == 1028 then
		totalRage = false
	end
	if curStep == 1030 then
		totalRage = true
	end
	if curStep == 1032 then
		totalRage = false
	end
	if curStep == 1034 then
		totalRage = true
	end
	if curStep == 1036 then
		totalRage = false
	end
	if curStep == 1038 then
		totalRage = true
	end
	if curStep == 1040 then
		totalRage = false
	end
	if curStep == 1042 then
		totalRage = true
	end
	if curStep == 1044 then
		totalRage = false
	end
	if curStep == 1046 then
		totalRage = true
	end
	if curStep == 1048 then
		totalRage = false
	end
	if curStep == 1050 then
		totalRage = true
	end
	if curStep == 1052 then
		totalRage = false
	end
	if curStep == 1054 then
		totalRage = true
	end
	if curStep == 1056 then
		totalRage = false
	end
	if curStep == 1058 then
		totalRage = true
	end
	if curStep == 1060 then
		totalRage = false
	end
	if curStep == 1062 then
		totalRage = true
	end
	if curStep == 1066 then
		totalRage = false
	end
	if curStep == 1066 then
		totalRage = true
	end
	if curStep == 1068 then
		totalRage = false
	end
	if curStep == 1070 then
		totalRage = true
	end
	if curStep == 1072 then
		totalRage = false
	end
	if curStep == 1344 then
		shakeAdd = 5
	end
	if curStep == 1360 then
		shakeAdd = 0
	end
	if curStep == 1472 then
		shakeAdd = 3
	end
	if curStep == 1728 then
		shakeAdd = 0
	end
	if curStep == 2112 then
		shakeAdd = 2
	end
	if curStep == 2240 then
		shakeAdd = 0
	end
	if curStep == 2272 then
		shakeAdd = 5
	end
	if curStep == 2284 then
		totalRage = true
	end
end
function onUpdate(elapsed)
   local doShake = shakey
   local HHH = shakeAdd
   shakey = lerp(shakey, 0 ,elapsed * 5)
   setStringAngle = math.random(-shakey,shakey)
      setProperty("camHUD.x", getRandomFloat(-HHH + 0.00, (HHH + 0.00)))
	if totalRage == true then
      setProperty("camGame.angle", getRandomFloat(-doShake + 0.00, (doShake + 0.00)))
      setProperty("camHUD.angle", getRandomFloat(-doShake + 0.00, (doShake + 0.00)))
	end
	if totalRage == false then
		doTweenAngle('gobackpleaseaseaythankss', 'camHUD', 0, 1, 'sineOut')
		doTweenAngle('gobackpleaseaseaythanks', 'camGame', 0, 2, 'sineInOut')
	end
end
function lerp(a, b, t)
	return a + (b - a) * t
end