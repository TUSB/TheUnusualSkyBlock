##############################
### ワイルドフレア拡散準備ループ
##############################

###向きをランダムに決める
function calc_manager:set/random_rotation

###矢召喚
execute rotated as @s run summon minecraft:arrow ^ ^ ^1 {Tags:[WildFlare,CooldownRequired,Projectile],PortalCooldown:100,Fire:100s,Color:-1}

###カウンタデクリメント
scoreboard players remove $Count Global 1

###条件ループ継続
execute if score $Count Global matches 1.. run function skill_manager:hunter/wild_flare/make_flare_loop
