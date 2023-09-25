# 分身を特定
scoreboard players operation @e[type=!player,tag=BurstShadow] ParentID -= @s OhMyDatID

## スキル前処理 ##

# プレイヤーから必要な情報をもらう
data remove storage skill: BurstShadow
data modify storage skill: BurstShadow.Attributes set from entity @s Attributes
data modify storage skill: BurstShadow.UUID set from entity @s UUID
data modify storage skill: BurstShadow.Health set from entity @s Health
execute as @e[type=!player,tag=BurstShadow,scores={ParentID=0}] run data modify entity @s {} merge from storage skill: BurstShadow

scoreboard players operation @e[type=!player,tag=BurstShadow,scores={ParentID=0}] MP = @s MP

## 影分身の位置で、一番近いEnemyに向いてスキルを実行する
## Enemyがいなければ、プレイヤーと同じ向きでスキルを実行する
execute as @e[type=!player,tag=BurstShadow,scores={ParentID=0}] positioned as @s facing entity @e[tag=Enemy,distance=..32,limit=1] feet run function skill:practice/act/
execute as @e[type=!player,tag=BurstShadow,scores={ParentID=0}] positioned as @s unless entity @e[tag=Enemy,distance=..32] run function skill:practice/act/

## スキル後処理 ##

# 影分身が召喚した投擲物をプレイヤーのものにする。
# Ownerを設定する投擲物は矢だけという前提
execute at @e[type=!player,tag=BurstShadow,scores={ParentID=0}] as @e[type=arrow,tag=!Initialized,distance=..3] run data modify entity @s Owner set from storage skill: BurstShadow.UUID

# サモンP：ウルフのOwnerを修正
execute if data storage skill: Skill{Name:"サモンPウルフ"} at @e[type=!player,tag=BurstShadow,scores={ParentID=0}] as @e[type=wolf,tag=!Initialized,distance=..6] run data modify entity @s Owner set from storage skill: BurstShadow.UUID

# 死亡トリガー 上の処理で影が死ぬので再召喚準備
execute if data storage skill: Skill{Trigger:"死ぬ"} run tag @s remove BurstShadow

# ダークスワンプのMP回復先を変更
execute if data storage skill: Skill{Name:"ダークスワンプ"} at @e[type=!player,tag=BurstShadow,scores={ParentID=0}] run scoreboard players operation @e[tag=DarkSwamp,tag=!Initialized,limit=1,distance=..0.01] TrackingID = @s OhMyDatID


# 特定終了
scoreboard players operation @e[type=!player,tag=BurstShadow] ParentID += @s OhMyDatID
