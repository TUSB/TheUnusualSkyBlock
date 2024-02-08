
### ワイルドフレア拡散準備ループ

###向きをランダムに決める
function calc:set/random_rotation

###矢召喚
execute rotated as @s run summon minecraft:arrow ^ ^ ^1 {Tags:[WildFlare,CooldownRequired,Skill,NativeTask,FlyingRequired],PortalCooldown:100,Fire:100s,Color:-1,damage:0.0d}

###カウンタデクリメント
scoreboard players remove _ Count 1

###条件ループ継続
execute if score _ Count matches 1.. run function skill:act/hunter/wild_flare/make_flare_loop
