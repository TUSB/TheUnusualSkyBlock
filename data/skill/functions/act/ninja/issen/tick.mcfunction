
### 一閃処理

##一閃選択
scoreboard players operation @e[tag=Issen,distance=..3] OhMyDatID -= @s OhMyDatID
execute at @e[tag=Issen,scores={OhMyDatID=0},distance=..3,limit=1] run tp @s ~ ~ ~

###ダメージ判定
execute if score @s Issen matches 20.. as @e[tag=Issen,scores={OhMyDatID=0},distance=..3,limit=1] run function skill:damage/load
execute if score @s Issen matches 20.. as @e[distance=..2.5,tag=Mob] at @s run function skill:act/ninja/issen/apply

#演出
execute if score @s Issen matches 20.. run function makeup:skill/act/ninja/issen/tick

#モーション0が存在する場合、killして終了
execute if score @s Issen matches 20 store success entity @e[tag=Issen,scores={OhMyDatID=0},distance=..3,limit=1,nbt={Motion:[0d]}] PortalCooldown int 0 run scoreboard players set @s Issen 0
execute if score @s Issen matches 20 run data merge entity @e[tag=Issen,scores={OhMyDatID=0},distance=..3,limit=1] {Motion:[0d,0d,0d]}

#スコアリセット
scoreboard players operation @e[tag=Issen,distance=..3] OhMyDatID += @s OhMyDatID
scoreboard players remove @s Issen 1
scoreboard players reset @s[scores={Issen=..0}] Issen
