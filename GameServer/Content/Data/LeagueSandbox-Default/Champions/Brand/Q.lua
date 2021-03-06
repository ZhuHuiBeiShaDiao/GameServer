Vector2 = require 'Vector2' -- include 2d vector lib 

function finishCasting()
    local current = Vector2:new(owner.X, owner.Y)
    local to = (Vector2:new(spell.X, spell.Y) - current):normalize()
    local range = to * 1050
    local trueCoords = current + range

    addProjectile(trueCoords.x, trueCoords.y)
end

function applyEffects()
	print(getEffectValue(0))
    dealMagicalDamage(getEffectValue(0)+owner:getStats():getTotalAp()*0.65)
    destroyProjectile()
end
