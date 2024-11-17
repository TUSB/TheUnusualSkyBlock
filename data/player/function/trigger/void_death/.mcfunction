#> player:trigger/void_death/
### 奈落死：Y-64以下、voidディメンション、呪詛
# 難易度分岐

# ピクニックなら中断
execute if data storage main: difficult{world:"picnic"} run return 0

function player:trigger/void_death/curse
