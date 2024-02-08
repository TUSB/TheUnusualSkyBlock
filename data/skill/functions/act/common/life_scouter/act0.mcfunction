
### ライフスカウター

# 視線上の敵を確認
data modify storage calc: Depth set value 12
function calc:target/caster/mob/catch
execute positioned as 0-0-0-0-0 as @e[tag=Mob,tag=!LifeScouter,tag=!HideLevel,distance=..0.01,sort=nearest,limit=1] run function skill:act/common/life_scouter/success
