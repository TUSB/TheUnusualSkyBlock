#> entity:damage/apply/core/

## ダメージ処理の実行チェック
# ダメージ値が指定されていなければ中断
execute unless data storage entity:_ damage.value run return fail
# 実行者が死亡していれば中断
execute if predicate entity:damage/check_death run return fail


# ダメージ値が割合設定ならば解決する
execute if data storage entity:_ damage.value{} run function entity:damage/apply/core/resolve_percentage_damage/

# 実行者のentity_typeによって処理を変更する
execute if entity @s[type=player] run function entity:damage/apply/core/player
execute unless entity @s[type=player] run function entity:damage/apply/core/mob
