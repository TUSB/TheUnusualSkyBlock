#>skill:act/knight/raging_slash/tick1
## 猛火斬毎tick処理（対象実行）

function makeup:skill/act/knight/raging_slash/tick

function calc:geometry/tp_00000
execute as 0-0-0-0-0 at @s run function calc:set/random_rotation
execute at @s positioned ~ ~1 ~ rotated as 0-0-0-0-0 facing ^ ^1 ^ positioned ^0.2 ^ ^-0.4 run function makeup:skill/act/knight/raging_slash/decorate
execute as 0-0-0-0-0 run function calc:geometry/return_marker

scoreboard players remove @s RagingCount 1
execute if score @s RagingCount matches ..0 run function skill:act/knight/raging_slash/finalize

tag @s add HitDamageTaken
tag @s add ReceivedPhysicalDamage
