
### ライフスカウター

# 視線上の敵を確認
data modify storage calc: Depth set value 12
function calc:target/caster/mob/catch
execute as @e[tag=CasterTarget,distance=..128,tag=!LifeScouter,tag=!HideLevel] at @s run function skill:act/common/life_scouter/success

function calc:target/caster/release
