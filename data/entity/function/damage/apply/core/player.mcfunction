#> entity:damage/apply/core/player
# プレイヤーへダメージを与える

# カスタム死亡ログがあればそれを表示するためにデフォルト死亡ログを非表示
execute if data storage entity: damage.deathcause run gamerule showDeathMessages false

# damageコマンドを実行する
function entity:damage/apply/core/apply.macro with storage entity:_ damage

# カスタム死亡ログがあって死亡すればログを表示
execute if data storage entity: damage.deathcause if data entity @s {Health:0f} run tellraw @a {"storage":"entity:","nbt":"damage.deathcause","interpret":true}
execute if data storage entity: damage.deathcause run gamerule showDeathMessages true
