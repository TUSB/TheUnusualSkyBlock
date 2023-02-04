
### アナライズ

function makeup:skill/act/common/analyse/act0

# 視線上の敵を確認
data modify storage calc: Depth set value 12
function calc:target/caster/mob/catch
execute if data storage calc: {Success:1b} at 0-0-0-0-0 run function skill:act/common/analyse/success
