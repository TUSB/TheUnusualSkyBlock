##############################
### 飛翔物ヒットチェック処理
##############################

###飛翔物がヒットしていればヒット処理へ
execute if entity @s[nbt={HurtTime:10s}] run function skill_manager:projectile/hit
###飛翔物処理フラグ削除
scoreboard players reset @s ProjectileSkill
