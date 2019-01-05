##############################
### 真空斬り発動判定
##############################

scoreboard players set $Depth Global 10
function calc_manager:target/caster/catch
execute if entity @e[tag=CasterTarget,limit=1] run scoreboard players operation @s ActiveSkill = @s ModeSkill
function calc_manager:target/caster/release
