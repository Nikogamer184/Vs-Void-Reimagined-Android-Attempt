function onUpdate()
	if boyfriendName == 'ac-playable' then
		if getProperty('health') >= .4 then
			setProperty('boyfriend.idleSuffix', '');
		end
		if getProperty('health') < .4 then
			setProperty('boyfriend.idleSuffix', '-alt');
		end
	end
end