##############################
### ぽむぽむ花火発動
##############################

execute positioned 0.0 0.0 0.0 positioned ^ ^ ^2.5 run function calc:throw_projectile/
scoreboard players set @s Interval 8
#ダメージを保存
function skill:damage/save
#Ownerを設定
data modify entity @e[tag=PomPom,tag=!Initialized,distance=..3,limit=1] Owner set from storage skill: UUID
#演出
function makeup:skill/act/summoner/pompom/act0
