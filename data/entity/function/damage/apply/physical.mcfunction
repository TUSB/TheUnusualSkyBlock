#> entity:damage/apply/physical
# 設定された物理ダメージを実行者に与える

# このダメージについての指定
data modify storage entity:_ damage.type set value "entity:physical"
data modify storage entity:_ damage.value set from storage entity: damage.physical

# core処理を実行
function entity:damage/apply/core/
