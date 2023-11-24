
# 分身を特定
scoreboard players operation @e[type=!player,tag=BurstShadow] ParentID -= @s OhMyDatID

# プレイヤーに追従
execute rotated ~ 0 run tp @e[tag=Shadow.Left,scores={ParentID=0}] ^2.25 ^ ^1
execute rotated ~ 0 run tp @e[tag=Shadow.Right,scores={ParentID=0}] ^-2.25 ^ ^1

# 向きを一番近いEnemyかプレイヤーに合わせる
execute as @e[type=!player,tag=BurstShadow,scores={ParentID=0}] positioned as @s facing entity @e[tag=Enemy,distance=..32,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[type=!player,tag=BurstShadow,scores={ParentID=0}] positioned as @s unless entity @e[tag=Enemy,distance=..32] run tp @s ~ ~ ~ ~ ~

# バーストブレイクしたプレイヤーから離れたら影は蒸発する
execute if entity @a[distance=32..,scores={Burst=0..}] run function skill:burst/ninja/shadow/evaporation

# 特定終了
scoreboard players operation @e[type=!player,tag=BurstShadow] ParentID += @s OhMyDatID
