-----------------------------------
-- Ability: Perfect Dodge
-- Allows you to dodge all melee attacks.
-- Obtained: Thief Level 1
-- Recast Time: 1:00:00
-- Duration: 0:00:30
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- onAbilityCheck
-----------------------------------

function onAbilityCheck(player,target,ability)
	return 0,0;
end;

-----------------------------------
-- onUseAbility
-----------------------------------

function onUseAbility(player,target,ability)
    player:addStatusEffect(EFFECT_PERFECT_DODGE,1,0,60);
end;