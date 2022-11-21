local voidbop = true
function onBeatHit()
	if voidbop == true then
	if curBeat % 2 == 0 then
		objectPlayAnimation('OMGHEHASTHECAT','dance',false)
	else
		objectPlayAnimation('OMGHEHASTHECAT','dance',true)
	end
	end
end