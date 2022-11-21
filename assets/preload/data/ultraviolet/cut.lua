function onCreate()
if isStoryMode then
	makeAnimatedLuaSprite('cut','2cut', -300, -200)
	addAnimationByPrefix('cut','idle','Cutscene First',12,true)
	addAnimationByPrefix('cut','2','Cutscene Second',12,false)
	addAnimationByPrefix('cut','3','Cutscene Third',12,false)
	objectPlayAnimation('cut','idle',true)
	setScrollFactor('cut', 0, 0);
	scaleObject('cut', 1.6, 1.6)
	setProperty('cut.alpha', 0)
	
	makeLuaSprite('aftermath', '3weekslater', -200, 200)
	setScrollFactor('aftermath', 0, 0)
	scaleObject('aftermath', 1.2, 1.2)
	setProperty('aftermath.alpha', 0)
	
	makeLuaSprite('aftermatheng', '3weekslater-eng', -200, 200)
	setScrollFactor('aftermatheng', 0, 0)
	scaleObject('aftermatheng', 1.2, 1.2)
	setProperty('aftermatheng.alpha', 0)

	addLuaSprite('cut', true)
	addLuaSprite('aftermath', true)
	addLuaSprite('aftermatheng', true)
end
end