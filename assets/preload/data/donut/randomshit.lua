local totalRage = false
local passiveRage = false
local shakeAdd = 0
local shakey = 0
function opponentNoteHit()
	shakey = 2
end
function onStepHit()
	if curStep == 688 then
		passiveRage = true
		shakeAdd = 5
	end
	if curStep == 816 then
		shakeAdd = 0
		passiveRage = false
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