# 分身を特定
scoreboard players operation @e[type=!player,tag=BurstShadow] ParentID -= @s OhMyDatID

#プレイヤーから必要な情報をもらう
data remove storage skill: BurstShadow
data modify storage skill: BurstShadow.Attributes set from entity @s Attributes
data modify storage skill: BurstShadow.UUID set from entity @s UUID
execute as @e[type=!player,tag=BurstShadow,scores={ParentID=0}] run data modify entity @s {} merge from storage skill: BurstShadow

scoreboard players operation @e[type=!player,tag=BurstShadow,scores={ParentID=0}] MP = @s MP

# 影分身の位置で、一番近いEnemyに向いてスキルを実行する
execute as @e[type=!player,tag=BurstShadow,scores={ParentID=0}] positioned as @s facing entity @e[tag=Enemy,distance=..32,limit=1] feet run function skill:practice/act/

# 影分身が召喚した投擲物をプレイヤーのものにする。
# Ownerを設定する投擲物は矢だけという前提
execute as @e[type=!player,tag=BurstShadow,scores={ParentID=0}] at @s as @e[type=arrow,tag=!Initialized,distance=..3] run data modify entity @s Owner set from storage skill: BurstShadow.UUID

# 特定終了
scoreboard players operation @e[type=!player,tag=BurstShadow] ParentID += @s OhMyDatID
