--the script is stolen from untitled goose mod, cry about it
local speed = 1--45
local thr = 2250
local dfltDir = 'thehotline/'
local obj = {
	{tag= 'sky'  ,fn= 'mall' ,x= -414 ,y= -112  ,sfx= 1.0, sfy= 1.0 ,frnt= false, gap= 0},
}

function onCreate()
	
	for i = 1, #(obj) do
		makeLuaSprite(obj[i].tag, dfltDir..obj[i].fn, obj[i].x, obj[i].y);
		setScrollFactor(obj[i].tag, obj[i].sfx, obj[i].sfy);
		addLuaSprite(obj[i].tag, obj[i].frnt);

		makeLuaSprite(obj[i].tag.."2", dfltDir..obj[i].fn, obj[i].x-getProperty(obj[i].tag..'.width')-obj[i].gap, obj[i].y);
		setScrollFactor(obj[i].tag.."2", obj[i].sfx, obj[i].sfy);
		addLuaSprite(obj[i].tag.."2", obj[i].frnt);
	end
end

function onUpdate()

	for i = 1, #(obj) do
		local tag = obj[i].tag
		local tag2 = obj[i].tag..'2'
		local sfx = obj[i].sfx
		local x = obj[i].x
		local gap = obj[i].gap
		setProperty(tag..'.x', getProperty(tag..'.x')+speed*sfx)
		setProperty(tag2..'.x', getProperty(tag2..'.x')+speed*sfx)

		if getProperty(tag..'.x')+getProperty(tag..'.width') >= thr then
			setProperty(tag2..'.x', getProperty(tag..'.x')-getProperty(tag..'.width')-gap+5)
		end
		if getProperty(tag2..'.x')+getProperty(tag2..'.width') >= thr then
			setProperty(tag..'.x', getProperty(tag2..'.x')-getProperty(tag2..'.width')-gap+5)
		end
		
	end
end
function onBeatHit()
	setProperty('boyfriend.y', -490)
	doTweenY('fuck', 'boyfriend', -500, 0.5, 'sineOut')
	setProperty('dad.y', -490)
	doTweenY('fuck2', 'dad', -500, 0.5, 'sineOut')
end
