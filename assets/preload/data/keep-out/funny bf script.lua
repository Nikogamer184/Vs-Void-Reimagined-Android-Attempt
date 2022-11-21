function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteData == 0 then
		characterPlayAnim('gf', 'singLEFT', true)
		setProperty('gf.specialAnim', true)
	end
	if noteData == 1 then
		characterPlayAnim('gf', 'singDOWN', true)
		setProperty('gf.specialAnim', true)
	end
	if noteData == 2 then
		characterPlayAnim('gf', 'singUP', true)
		setProperty('gf.specialAnim', true)
	end
	if noteData == 3 then
		characterPlayAnim('gf', 'singRIGHT', true)
		setProperty('gf.specialAnim', true)
	end
	if noteType == 'Alt Animation' then
	if noteData == 0 then
		characterPlayAnim('gf', 'singLEFT-alt', true)
		setProperty('gf.specialAnim', true)
	end
	if noteData == 1 then
		characterPlayAnim('gf', 'singDOWN-alt', true)
		setProperty('gf.specialAnim', true)
	end
	if noteData == 2 then
		characterPlayAnim('gf', 'singUP-alt', true)
		setProperty('gf.specialAnim', true)
	end
	if noteData == 3 then
		characterPlayAnim('gf', 'singRIGHT-alt', true)
		setProperty('gf.specialAnim', true)
	end
	end
end