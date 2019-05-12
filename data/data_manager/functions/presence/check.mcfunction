##############################
### 居るかを返す
##############################

### 居るか取得
execute at 1-0-0-0-0 store result score $Presence SuccessCount if entity @e[distance=0,tag=DataHolder,limit=1]
### 対象がプレイヤーの場合
execute at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,tag=PlayerData] if entity @s[nbt={Item:{tag:{EntityData:{Health:0f}}}}] run scoreboard players set $Presence SuccessCount 0
