#> player:trigger/void_death/
### 奈落死：Y-64以下、voidディメンション、呪詛
# 難易度分岐

# カジュアル処理(呪詛)
    execute if data storage main: difficult{world:"casual"} run function player:death_item_drop/casual_curse

# エキスパート(呪詛)
    execute if data storage main: difficult{world:"expert"} run function player:death_item_drop/expert_curse
