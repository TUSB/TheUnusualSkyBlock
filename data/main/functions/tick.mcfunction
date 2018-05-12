##########################################
	#メインループ
	#From Tag minecraft:tick
	#as ワールド at ワールド
##########################################
###ボス落下砂保持
execute at @e[tag=BlockCarrier] as @e[dy=2,type=minecraft:falling_block] run data merge entity @s {Time:590}
###ボス限定処理
execute if score $Current FLOOR matches 51 run function explore:boss
execute if score $Last FLOOR matches 51 store result score $Last FLOOR run tp 0-0-4-0-4 -15 33 -2
###ターゲット探索
execute as @a[team=Explorer,gamemode=adventure] at @s if entity @s[y=45,dy=1] run function pointer:search
###魔法の弾の処理
execute as @e[tag=Bullet] at @s run function magic:bullet
###特殊効果処理
execute as @e[tag=Fired] at @s run function magic:fired
execute as @e[tag=Iced] at @s run function magic:iced
execute as @e[tag=Darked] at @s run function magic:darked
###ウィッチ処理
execute as @e[type=minecraft:potion,tag=!Modified] run data merge entity @s {Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"",CustomPotionEffects:[{Id:7b,Duration:1,Amplifier:0b,ShowParticles:false}]}},Tags:[Modified]}
execute as @e[type=minecraft:area_effect_cloud,tag=!Modified] run function enemy:set_duration
###ガラス瓶処理
clear @a[scores={USE_POTION=1..}] minecraft:glass_bottle
scoreboard players reset @a[scores={USE_POTION=1..}] USE_POTION
###敵ゲート侵入処理
execute as @e[team=Enemy] unless entity @s[x=-70,y=43,z=-70,dx=139,dy=13,dz=139] run function enemy:death
###MP回復・表示処理
execute as @a[team=Explorer,gamemode=adventure] run function magic:mp_refresh
###素手攻撃処理
execute as @a[team=Explorer,gamemode=adventure,scores={DAMAGE_DEALT=0..}] at @s run function magic:attack
###HP回復処理
execute as @a[gamemode=adventure,tag=Healing] if score @s HEALING < $Span HEALING run function magic:stop_healing
execute as @a[gamemode=adventure] if score @s HEALING >= $Span HEALING run function magic:healing
###店などのアイテム回収・設置処理
execute as @a at @s if block ~ ~-1 ~ minecraft:gold_block align xyz run function item:replace
###バッジメッセージ
execute as @a[scores={PICK_SHIELD=1..}] run function shield:pickup
###転送屋メッセージ
execute as @a[tag=!ReadyToChangeFloor] at @s if block ~ ~-2 ~ minecraft:diamond_block run tellraw @s [{"translate":"message.note","color":"aqua"},{"translate":"message.manual.portal"}]
execute as @a[tag=!ReadyToChangeFloor] at @s if block ~ ~-2 ~ minecraft:diamond_block run tag @s add ReadyToChangeFloor
execute as @a[tag=ReadyToChangeFloor] at @s unless block ~ ~-2 ~ minecraft:diamond_block run tag @s remove ReadyToChangeFloor
###倉庫拡張メッセージ
execute as @a[tag=!ReadyToExpand] at @s if block ~ ~-2 ~ minecraft:lapis_block run tellraw @s [{"translate":"message.note","color":"aqua"},{"translate":"message.manual.expand"}]
execute as @a[tag=!ReadyToExpand] at @s if block ~ ~-2 ~ minecraft:lapis_block run tag @s add ReadyToExpand
execute as @a[tag=ReadyToExpand] at @s unless block ~ ~-2 ~ minecraft:lapis_block run tag @s remove ReadyToExpand
###倉庫屋メッセージ
execute as @a[tag=!ReadyToKeep] at @s if block ~ ~-2 ~ minecraft:redstone_block run tellraw @s [{"translate":"message.note","color":"aqua"},{"translate":"message.manual.keep"}]
execute as @a[tag=!ReadyToKeep] at @s if block ~ ~-2 ~ minecraft:redstone_block run tag @s add ReadyToKeep
execute as @a[tag=ReadyToKeep] at @s unless block ~ ~-2 ~ minecraft:redstone_block run tag @s remove ReadyToKeep
###道具屋メッセージ
execute as @a[tag=!ReadyToTrade] at @s if block ~ ~-1 ~ minecraft:gold_block if block ~ ~-2 ~ minecraft:iron_block run tellraw @s [{"translate":"message.note","color":"aqua"},{"translate":"message.manual.trade"}]
execute as @a[tag=!ReadyToTrade] at @s if block ~ ~-1 ~ minecraft:gold_block if block ~ ~-2 ~ minecraft:iron_block run tag @s add ReadyToTrade
execute as @a[tag=ReadyToTrade] at @s unless block ~ ~-2 ~ minecraft:iron_block run tag @s remove ReadyToTrade
###敵&アイテム召喚
execute if score $Summon FLOOR matches 2 run function calc:maze_summon
###ワープ先処理
function explore:warp
###Effect処理
tag @a[tag=DarkedSkeleton] remove DarkedSkeleton
tag @a[tag=DarkedHusk] remove DarkedHusk
tag @a[tag=DarkedStray] remove DarkedStray
tag @a[tag=DarkedWither] remove DarkedWither
tag @a[tag=DarkedCave] remove DarkedCave
tag @a[tag=DarkedVindi] remove DarkedVindi
###ログイン検知
scoreboard players add $Base LOGIN_COUNT 1
execute as @a if score @s LOGIN_COUNT < $Base LOGIN_COUNT run function main:login
###BGM
execute as @a[tag=BGM] run function main:bgm/play
###メッセージ演出
execute as @a[scores={MESSAGE_START=0..}] run function main:message/start
execute as @a[scores={MESSAGE_GOAL=0..}] run function main:message/goal
execute as @a[scores={MESSAGE_BOSS=0..},limit=1] run function main:message/boss
###エンドゲートウェイバグ回避
#execute as @a at @s if block ~ ~ ~ minecraft:end_gateway run function end_gateway:gateway
