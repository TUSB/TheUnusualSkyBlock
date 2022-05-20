
### アナライズ

# 視線上の敵を確認
data modify storage calc: Depth set value 12
function calc:target/caster/enemy/catch
execute if entity @e[tag=CasterTarget,distance=..128] run function skill:act/common/analyse/success

function calc:target/caster/release
