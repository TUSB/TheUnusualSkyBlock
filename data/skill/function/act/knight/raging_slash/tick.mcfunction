#> skill:act/knight/raging_slash/tick
#
# 猛火斬ダメージ付与

# スキルレベル取得
scoreboard players operation _ Level = @s RagingCount
scoreboard players set _ _ 1000
scoreboard players operation _ Level /= _ _

# 回数判定
scoreboard players remove @s RagingCount 1
scoreboard players operation _ RagingCount = @s RagingCount
scoreboard players operation _ RagingCount %= _ _
execute if score _ RagingCount matches ..0 run function skill:act/knight/raging_slash/finalize

# ダメージを取得、適用
execute if score _ Level matches 1 run data modify storage skill: damage set from storage skill: Data.Knight[{Name:"猛火斬",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: damage set from storage skill: Data.Knight[{Name:"猛火斬",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: damage set from storage skill: Data.Knight[{Name:"猛火斬",Level:3}].Damage
function skill:damage/apply/

tag @s add HitDamageTaken
tag @s add ReceivedPhysicalDamage

# 演出
function makeup:skill/act/knight/raging_slash/tick

function calc:geometry/tp_00000
execute as 0-0-0-0-0 at @s run function calc:set/random_rotation
execute at @s positioned ~ ~1 ~ rotated as 0-0-0-0-0 facing ^ ^1 ^ positioned ^0.2 ^ ^-0.4 run function makeup:skill/act/knight/raging_slash/decorate
execute as 0-0-0-0-0 run function calc:geometry/return_marker
