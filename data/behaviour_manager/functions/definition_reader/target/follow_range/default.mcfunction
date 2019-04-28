##############################
### 検知範囲読み込み規定値
##############################

### 飛翔物の規定値は12800cm
scoreboard players set @s[tag=Bullet] FollowRange 12800
### モブの規定値は3200cm
scoreboard players set @s[tag=!Bullet] FollowRange 3200

### データ持ちならそれを設定
execute if data entity @s Attributes[{Name:"generic.followRange"}].Base store result score @s FollowRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 100
