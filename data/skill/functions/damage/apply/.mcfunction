function skill:damage/apply/physical
function skill:damage/apply/elemental
execute if data storage skill: Damage{Hit:1b} run tag @s add HitDamageTaken
execute unless data storage skill: Damage{Hit:1b} run scoreboard players operation @s StoredDamage += _ Calc
