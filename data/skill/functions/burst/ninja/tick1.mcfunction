
# 分身を特定
scoreboard players operation @e[type=!player,tag=BurstShadow] ParentID -= @s OhMyDatID

# プレイヤーに追従
execute rotated ~ 0 run tp @e[tag=Shadow.Left,scores={ParentID=0}] ^2.25 ^ ^1
execute rotated ~ 0 run tp @e[tag=Shadow.Right,scores={ParentID=0}] ^-2.25 ^ ^1

# バーストブレイクしたプレイヤーから離れたら影は蒸発する
execute if entity @a[distance=32..,scores={Burst=0..}] run function skill:burst/ninja/shadow/evaporationa

# 特定終了
scoreboard players operation @e[type=!player,tag=BurstShadow] ParentID += @s OhMyDatID
