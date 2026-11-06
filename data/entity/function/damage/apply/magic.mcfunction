#> entity:damage/apply/magic
# 設定された魔法ダメージを実行者に与える

# このダメージについての指定
data modify storage entity:_ damage set value {type:"entity:magic"}
data modify storage entity:_ damage.value set from storage entity: damage.magic

# ダメージ値が割合設定ならば解決する
execute if data storage entity:_ damage.value{} run function entity:damage/apply/core/resolve_percentage_damage/

# 軽減率を計算
execute store result score _ MagicDefense run function entity:damage/apply/core/get_magic_defense
# 75=軽減率調整用の数値 100倍で計算
scoreboard players add _ MagicDefense 75
scoreboard players set _ _ 7500
scoreboard players operation _ _ /= _ MagicDefense

execute store result score _ Calc run data get storage entity:_ damage.value 100

# Shieldの処理を入れる
scoreboard players operation _ Calc -= @s Shield
execute if score _ Calc matches ..-1 run scoreboard players set _ Calc 0
execute store result storage entity:_ damage.value double 0.0001 run scoreboard players operation _ Calc *= _ _

# core処理を実行
function entity:damage/apply/core/

# 被弾フラグ
tag @s add ReceivedMagicDamage
