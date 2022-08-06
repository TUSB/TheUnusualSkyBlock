
### 真空斬り発動判定

# 視線上の敵を確認
data modify storage calc: Depth set value 10
function calc:target/caster/enemy/catch
execute if entity @e[tag=CasterTarget,distance=..128] run function skill:act/knight/aerial_slash/act1
execute unless entity @e[tag=CasterTarget,distance=..128] run data modify storage skill: Success set value 0b
function calc:target/caster/release
