##############################
### モブダメージ今
##############################

### 計算
scoreboard players operation @s Damage -= @s RecentMaxDamage
scoreboard players operation @s RecentMaxDamage += @s Damage
### 適用
function entity_manager:damage/apply
### フラグとして扱われるので先にリセット
scoreboard players reset @s Damage
### HurtTime処理呼び出し
function enemy_manager:on_skill_damaged
