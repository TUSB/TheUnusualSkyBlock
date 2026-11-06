#> entity:damage/apply/unreasonable
# 設定された理外ダメージを実行者に与える

# このダメージについての指定
data modify storage entity:_ damage set value {type:"entity:unreasonable"}
data modify storage entity:_ damage.value set from storage entity: damage.unreasonable

# ダメージ値が割合設定ならば解決する
execute if data storage entity:_ damage.value{} run function entity:damage/apply/core/resolve_percentage_damage/

# core処理を実行
function entity:damage/apply/core/

# 被弾フラグ
tag @s add ReceivedUnreasonableDamage
