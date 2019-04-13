##############################
### パーティクル表示タグ更新
##############################

## パーティクル表示タグを削除
tag @a remove ShowParticles

## パーティクルスコアに応じてパーティクル表示タグを付与
execute store result score $SuppressParticle5 GlobalTimer unless score $SuppressParticle5 GlobalTimer matches ..5 run tag @a[scores={SuppressParticle=5}] add ShowParticles
execute store result score $SuppressParticle4 GlobalTimer unless score $SuppressParticle4 GlobalTimer matches ..4 run tag @a[scores={SuppressParticle=4}] add ShowParticles
execute store result score $SuppressParticle3 GlobalTimer unless score $SuppressParticle3 GlobalTimer matches ..3 run tag @a[scores={SuppressParticle=3}] add ShowParticles
execute store result score $SuppressParticle2 GlobalTimer unless score $SuppressParticle2 GlobalTimer matches ..2 run tag @a[scores={SuppressParticle=2}] add ShowParticles
execute as @a unless score @s SuppressParticle matches 2.. run tag @s add ShowParticles
