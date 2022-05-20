
### ライブラ

function makeup:skill/act/common/libra/act0

# 視線上の敵を確認
data modify storage calc: Depth set value 12
function calc:target/caster/mob/catch
execute as @e[tag=CasterTarget,distance=..128] run function skill:act/common/libra/success

function calc:target/caster/release
