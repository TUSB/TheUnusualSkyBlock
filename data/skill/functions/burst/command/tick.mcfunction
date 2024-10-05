### バーストコマンド表示中tick

scoreboard players operation @e[tag=BurstCommand] ParentID -= @s OhMyDatID

#全て入力済みになったらバーストブレイク
execute anchored eyes positioned ^ ^-0.85 ^5 unless entity @e[tag=BurstCommand,tag=!Center,scores={ParentID=0,Burst=0},distance=..64] run function skill:burst/break

#バーストコマンド入力
execute anchored eyes positioned ^ ^-0.85 ^5 as @e[tag=BurstCommand,scores={ParentID=0},distance=..6,limit=1,sort=nearest] if entity @s[tag=!Center,scores={Burst=0}] run function makeup:skill/burst/command/hit
execute anchored eyes positioned ^ ^-0.85 ^5 as @e[tag=BurstCommand,scores={ParentID=0},distance=..6,limit=1,sort=nearest] if entity @s[tag=!Center] run scoreboard players set @s Burst 1

#パーティクル表示
execute anchored eyes positioned ^ ^-0.85 ^5 at @e[tag=BurstCommand,scores={ParentID=0,Burst=0},distance=..6] positioned ^ ^0.85 ^ run function makeup:skill/burst/command/off
execute anchored eyes positioned ^ ^-0.85 ^5 at @e[tag=BurstCommand,scores={ParentID=0,Burst=1},distance=..6] positioned ^ ^0.85 ^ run function makeup:skill/burst/command/on

scoreboard players operation @e[tag=BurstCommand] ParentID += @s OhMyDatID

# バーストブレイクしたら他の人のバーストコマンドを解除
execute if score @s Burst matches 1.. as @a[scores={Burst=..-1}] run function skill:burst/command/reset

scoreboard players add @s Burst 1
scoreboard players reset @s[scores={Burst=0}] Burst
