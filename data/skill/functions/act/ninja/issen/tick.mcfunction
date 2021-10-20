
### 一閃処理

##一閃選択
scoreboard players operation @e[tag=Issen] OhMyDatID -= @s OhMyDatID
execute at @e[tag=Issen,scores={OhMyDatID=0},limit=1] run tp @s ~ ~ ~
#モーション０が存在する場合、とどまる処理はなし
execute if score @s Issen matches 20 run kill @e[tag=Issen,scores={OhMyDatID=0},limit=1,nbt={Motion:[0d]}]
execute if score @s Issen matches 20 run data merge entity @e[tag=Issen,scores={OhMyDatID=0},limit=1] {Motion:[0d,0d,0d]}
#ダメージロード
execute as @e[tag=Issen,scores={OhMyDatID=0},limit=1] run function skill:damage/load
# scoreboard players operation @e[tag=Issen] OhMyDatID += @s OhMyDatID

#一閃tick消費
scoreboard players remove @s Issen 1

###ダメージ判定
#一閃ダメージ設定
execute if score @s Issen matches 20.. as @e[distance=..2.5,tag=Mob] run function skill:damage/apply/
#近接被ダメ回避
execute if score @s Issen matches 20.. run effect give @e[distance=..2.5,tag=Mob] minecraft:weakness 1 127 true

#演出
function makeup:skill/act/ninja/issen/tick

#一閃終了時に残らないようにする。
execute if score @s Issen matches 0 run kill @e[tag=Issen,scores={OhMyDatID=0}]

#スコアリセット
scoreboard players operation @e[tag=Issen] OhMyDatID += @s OhMyDatID
scoreboard players reset @s[scores={Issen=..0}] Issen
