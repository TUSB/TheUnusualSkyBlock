
### 猛火斬ダメージ付与

function makeup:skill/act/knight/raging_slash/tick

function calc:geometry/tp_00000
execute as 0-0-0-0-0 at @s run function calc:set/random_rotation
execute at @s positioned ~ ~1 ~ rotated as 0-0-0-0-0 facing ^ ^1 ^ positioned ^0.2 ^ ^-0.4 run function makeup:skill/act/knight/raging_slash/decorate
execute as 0-0-0-0-0 run function calc:geometry/return_marker

scoreboard players remove @s RagingDamage 1
scoreboard players operation # Damage = @s RagingDamage
scoreboard players set _ _ 100
scoreboard players operation # Damage /= _ _
scoreboard players operation @s Damage += # Damage
scoreboard players operation _ RagingDamage = @s RagingDamage
scoreboard players operation _ RagingDamage %= _ _
execute if score _ RagingDamage matches ..0 run function skill:act/knight/raging_slash/finalize

tag @s add HitDamageTaken
tag @s add ReceivedPhysicalDamage
tag @s add ReceivedFireDamage
