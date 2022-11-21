function onCreate()
if isStoryMode then
	makeAnimatedLuaSprite('cut','1cut', -300, 900)
	addAnimationByPrefix('cut','idle','Cutscene First',24,true)
	addAnimationByPrefix('cut','2','Cutscene Second',12,false)
	addAnimationByPrefix('cut','3','Cutscene Third',12,false)
	objectPlayAnimation('cut','idle',true)
	setScrollFactor('cut', 0, 0);
	scaleObject('cut', 1.6, 1.6)
	setProperty('cut.alpha', 1)
	
	makeLuaSprite('lookboys', 'wellwell', -200, 200)
	setScrollFactor('lookboys', 0, 0)
	scaleObject('lookboys', 1.2, 1.2)
	setProperty('lookboys.alpha', 0.0001)
	
	makeLuaSprite('lookboyseng', 'wellwell-eng', -200, 200)
	setScrollFactor('lookboyseng', 0, 0)
	scaleObject('lookboyseng', 1.2, 1.2)
	setProperty('lookboyseng.alpha', 0.0001)

	addLuaSprite('cut', true)
	addLuaSprite('lookboys', true)
	addLuaSprite('lookboyseng', true)
end
end