---------------------------------------------
--  Flame Armor
--
--  Description: Covers the user in fiery spikes. Enemies that hit it take fire damage.
--  Type: Enhancing
--  Utsusemi/Blink absorb: N/A
--  Range: Self
--  Notes:
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local power = 50;
	local duration = 180;
	local typeEffect = EFFECT_BLAZE_SPIKES;

    skill:setMsg(MobBuffMove(mob, typeEffect, power, 0, duration));

	return typeEffect;
end;
