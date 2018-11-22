##############################
### 真空斬り発動
##############################

scoreboard players set $Depth Global 10
function calc_manager:target/caster/catch
execute if entity @e[tag=CasterTarget,limit=1] run function skill_manager:knight/aerial_slash/act
function calc_manager:target/caster/release
