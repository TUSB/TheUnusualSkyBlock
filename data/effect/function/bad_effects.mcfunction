#> effect:bad_effects
###免疫発動

say a

execute if predicate effect:resist run function makeup:effect/bad_effects
scoreboard players set @s ResistLock 0

#吐き気
execute if entity @s[advancements={effect:bad_effects={nausea=true}},predicate=effect:resist] store success score @s ResistLock run function effect:resist with storage effect: resist.bad_effect.nausea
effect clear @s[scores={ResistLock=1}] nausea

#毒
execute if entity @s[advancements={effect:bad_effects={poison=true}},predicate=effect:resist] store success score @s ResistLock run function effect:resist with storage effect: resist.bad_effect.poison
effect clear @s[scores={ResistLock=1}] poison

#弱体化
execute if entity @s[advancements={effect:bad_effects={weakness=true}},predicate=effect:resist] store success score @s ResistLock run function effect:resist with storage effect: resist.bad_effect.weakness
effect clear @s[scores={ResistLock=1}] weakness

#ウィザー
execute if entity @s[advancements={effect:bad_effects={wither=true}},predicate=effect:resist] store success score @s ResistLock run function effect:resist with storage effect: resist.bad_effect.wither
effect clear @s[scores={ResistLock=1}] wither

#盲目
execute if entity @s[advancements={effect:bad_effects={blindness=true}},predicate=effect:resist] store success score @s ResistLock run function effect:resist with storage effect: resist.bad_effect.blindness
effect clear @s[scores={ResistLock=1}] blindness

#空腹
execute if entity @s[advancements={effect:bad_effects={hunger=true}},predicate=effect:resist] store success score @s ResistLock run function effect:resist with storage effect: resist.bad_effect.hunger
effect clear @s[scores={ResistLock=1}] hunger

#採掘速度低下
execute if entity @s[advancements={effect:bad_effects={mining_fatigue=true}},predicate=effect:resist] store success score @s ResistLock run function effect:resist with storage effect: resist.bad_effect.mining_fatigue
effect clear @s[scores={ResistLock=1}] mining_fatigue

#移動速度低下
execute if entity @s[advancements={effect:bad_effects={slowness=true}},predicate=effect:resist] store success score @s ResistLock run function effect:resist with storage effect: resist.bad_effect.slowness
effect clear @s[scores={ResistLock=1}] slowness

#暗闇
execute if entity @s[advancements={effect:bad_effects={darkness=true}},predicate=effect:resist] store success score @s ResistLock run function effect:resist with storage effect: resist.bad_effect.darkness
effect clear @s[scores={ResistLock=1}] darkness

execute if entity @a[distance=..32,scores={Burst=0..,Job=4}] run function skill:act/white_mage/clear/cure/level2

advancement revoke @s only effect:bad_effects
