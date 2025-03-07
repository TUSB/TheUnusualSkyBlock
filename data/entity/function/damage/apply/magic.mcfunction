#> entity:damage/apply/magic
# 設定された魔法ダメージを実行者に与える

# このダメージについての指定
data modify storage entity:_ damage set value {type:"entity:magic"}
data modify storage entity:_ damage.value set from storage entity: damage.magic

# core処理を実行
function entity:damage/apply/core/
