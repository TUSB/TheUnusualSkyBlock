##############################
### ワイルドカード バナー選択
##############################

#最寄りのバナー選択
kill @e[tag=MyBanner,tag=Center,limit=1]
execute positioned ^ ^ ^100 run kill @e[tag=MyBanner,limit=5,sort=furthest]
execute as @e[tag=MyBanner,limit=1] run data merge entity @s {PortalCooldown:40,NoGravity:0b,ActiveEffects:[{Id:24,Amplifier:0,Duration:100},{Id:25,Amplifier:0,Duration:100}]}
scoreboard players operation @s WildCard = @e[tag=MyBanner,limit=1] WildCard
scoreboard players operation $WildCard Global = @s WildCard

##### A
#0/4/8/16/32m前方
execute if score $WildCard Global matches 10000000..10999999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"あなたを中心に\"}",Tags:[WCText,WCText1]}
execute if score $WildCard Global matches 11000000..11999999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"あなたの目の前を中心に\"}",Tags:[WCText,WCText1]}
execute if score $WildCard Global matches 12000000..12999999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"あなたの少し前を中心に\"}",Tags:[WCText,WCText1]}
execute if score $WildCard Global matches 13000000..13999999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"あなたのかなり先を中心に\"}",Tags:[WCText,WCText1]}
execute if score $WildCard Global matches 14000000..14999999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"あなたのずっと先を中心に\"}",Tags:[WCText,WCText1]}

##### B
#0/2/5/10秒後
scoreboard players operation $WildCard Global %= $1000000 Const
execute if score $WildCard Global matches 0..99999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"すぐに\"}",Tags:[WCText,WCText2]}
execute if score $WildCard Global matches 100000..199999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"少し遅れて\"}",Tags:[WCText,WCText2]}
execute if score $WildCard Global matches 200000..299999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"かなり遅れて\"}",Tags:[WCText,WCText2]}
execute if score $WildCard Global matches 300000..399999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"忘れた頃に\"}",Tags:[WCText,WCText2]}

##### C
#半径2/4/8/16m
scoreboard players operation $WildCard Global %= $100000 Const
execute if score $WildCard Global matches 0..9999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"とても狭い\"}",Tags:[WCText,WCText3]}
execute if score $WildCard Global matches 10000..19999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"狭い\"}",Tags:[WCText,WCText3]}
execute if score $WildCard Global matches 20000..29999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"広い\"}",Tags:[WCText,WCText3]}
execute if score $WildCard Global matches 30000..39999 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"とても広い\"}",Tags:[WCText,WCText3]}

##### F
scoreboard players operation $WildCard Global %= $10000 Const
execute if score $WildCard Global matches 0..99 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"防御力を高める\"}",Tags:[WCText,WCText6]}
execute if score $WildCard Global matches 100..199 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"回復する\"}",Tags:[WCText,WCText6]}
execute if score $WildCard Global matches 200..299 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"ダメージを与える\"}",Tags:[WCText,WCText6]}

##### D
scoreboard players operation $WildCard Global %= $100 Const
execute if score $WildCard Global matches 0..9 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"とても弱い\"}",Tags:[WCText,WCText4]}
execute if score $WildCard Global matches 10..19 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"弱い\"}",Tags:[WCText,WCText4]}
execute if score $WildCard Global matches 20..29 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"強い\"}",Tags:[WCText,WCText4]}
execute if score $WildCard Global matches 30..39 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"とても強い\"}",Tags:[WCText,WCText4]}

##### E
scoreboard players operation $WildCard Global %= $10 Const
execute if score $WildCard Global matches 0 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"とても短い\"}",Tags:[WCText,WCText5]}
execute if score $WildCard Global matches 1 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"短い\"}",Tags:[WCText,WCText5]}
execute if score $WildCard Global matches 2 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"長い\"}",Tags:[WCText,WCText5]}
execute if score $WildCard Global matches 3 run summon minecraft:area_effect_cloud ~ 0 ~ {CustomName:"{\"text\":\"とても長い\"}",Tags:[WCText,WCText5]}

tellraw @a ["",{"text":"ワイルドカードは"},{"selector":"@e[tag=WCText1,limit=1]","color":"red"},{"selector":"@e[tag=WCText2,limit=1]","color":"gold"},{"selector":"@e[tag=WCText3,limit=1]","color":"yellow"},{"selector":"@e[tag=WCText4,limit=1]","color":"green"},{"selector":"@e[tag=WCText5,limit=1]","color":"aqua"},{"selector":"@e[tag=WCText6,limit=1]","color":"blue"},{"text":"魔法に変化した！！！"}]
kill @e[tag=WCText]

###---演出---Start
playsound minecraft:block.beacon.power_select master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.end_portal.spawn master @a[distance=..32] ~ ~ ~ 0.5 2
execute positioned as @e[tag=MyBanner,limit=1] run particle minecraft:entity_effect ~ ~1 ~ 0.5 1 0.5 10000000 100 force @a[tag=ShowParticles]
particle minecraft:witch ~ ~0.1 ~ 1 0 1 1 50 force @a[tag=ShowParticles]
###---演出---End
