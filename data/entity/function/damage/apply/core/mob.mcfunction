#> entity:damage/apply/core/mob
# モブへダメージを与える

# damageコマンドを実行する
function entity:damage/apply/core/apply.macro with storage entity:_ damage

# HPを更新する
function enemy:damage/update_health

# Hitダメージフラグを付与
execute if data storage entity: damage{hit:1b} run tag @s add HitDamageTaken
