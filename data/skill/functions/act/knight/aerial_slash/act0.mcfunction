
### 真空斬り発動判定

# 視線上の敵を確認
data modify storage calc: Depth set value 10
function calc:target/caster/enemy/catch
execute if data storage calc: {Success:1b} anchored eyes positioned ^ ^ ^2.5 run function skill:act/knight/aerial_slash/act1
execute unless data storage calc: {Success:1b} run data modify storage skill: Success set value 0b
