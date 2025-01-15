#> entity:damage/apply/physical
# 設定された物理ダメージを実行者に与える

# このダメージについての指定
data modify storage entity:_ damage.type set value "entity:physical"
data modify storage entity:_ damage.value set from storage entity: damage.physical

# ダメージ値が割合設定ならば解決する
# execute if data storage entity:_ damage.value{} run function entity:damage/apply/core/???

# 実行者のentity_typeによって処理を変更する
execute if entity @s[type=player] run function entity:damage/apply/core/player
execute unless entity @s[type=player] run function entity:damage/apply/core/mob
