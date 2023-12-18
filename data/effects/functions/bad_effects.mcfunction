
###免疫発動(するかも)

scoreboard players set _ ResistLock 0

#吐き気
execute store result score _ ResistEffects run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ ResistEffects %= _ _
execute if entity @s[advancements={effects:bad_effects={nausea=true}}] if score _ ResistEffects < @s ResistEffects store success score _ ResistLock run effect clear @s nausea

#毒
execute store result score _ ResistEffects run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ ResistEffects %= _ _
execute if entity @s[advancements={effects:bad_effects={poison=true}}] if score _ ResistEffects < @s ResistEffects store success score _ ResistLock run effect clear @s poison

#弱体化
execute store result score _ ResistEffects run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ ResistEffects %= _ _
execute if entity @s[advancements={effects:bad_effects={weakness=true}}] if score _ ResistEffects < @s ResistEffects store success score _ ResistLock run effect clear @s weakness

#ウィザー
execute store result score _ ResistEffects run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ ResistEffects %= _ _
execute if entity @s[advancements={effects:bad_effects={wither=true}}] if score _ ResistEffects < @s ResistEffects store success score _ ResistLock run effect clear @s wither

#盲目
execute store result score _ ResistEffects run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ ResistEffects %= _ _
execute if entity @s[advancements={effects:bad_effects={blindness=true}}] if score _ ResistEffects < @s ResistEffects store success score _ ResistLock run effect clear @s blindness

#空腹
execute store result score _ ResistEffects run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ ResistEffects %= _ _
execute if entity @s[advancements={effects:bad_effects={hunger=true}}] if score _ ResistEffects < @s ResistEffects store success score _ ResistLock run effect clear @s hunger

#採掘速度低下
execute store result score _ ResistEffects run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ ResistEffects %= _ _
execute if entity @s[advancements={effects:bad_effects={mining_fatigue=true}}] if score _ ResistEffects < @s ResistEffects store success score _ ResistLock run effect clear @s mining_fatigue

#移動速度低下
execute store result score _ ResistEffects run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ ResistEffects %= _ _
execute if entity @s[advancements={effects:bad_effects={slowness=true}}] if score _ ResistEffects < @s ResistEffects store success score _ ResistLock run effect clear @s slowness

#暗闇
execute store result score _ ResistEffects run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ ResistEffects %= _ _
execute if entity @s[advancements={effects:bad_effects={darkness=true}}] if score _ ResistEffects < @s ResistEffects store success score _ ResistLock run effect clear @s darkness

execute if entity @a[distance=..32,scores={Burst=0..,Job=4}] run function skill:act/white_mage/clear/cure/level2
execute if entity @a[distance=..32,scores={Burst=0..,Job=4}] run scoreboard players set @s ResistLock 1

execute unless score @s ResistLock matches 1 if score _ ResistLock matches 1.. run function makeup:effects/bad_effects
execute unless score @s ResistLock matches 1 if score _ ResistLock matches ..0 run scoreboard players add @s ResistEffects 3
scoreboard players set @s ResistLock 1

advancement revoke @s only effects:bad_effects
