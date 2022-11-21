local totalRage = false
local passiveRage = false
local shakeAdd = 0
local shakey = 0
function opponentNoteHit()
	shakey = 1
end
function onStepHit()
	if curStep == 768 then
		totalRage = true
	end
	if curStep == 2366 then
		totalRage = false
	end
	if curStep == 2880 then
		totalRage = true
		shakey = 3
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