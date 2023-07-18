### バーストコマンド表示中tick

scoreboard players operation * ParentID -= @s OhMyDatID

#全て入力済みになったらバーストブレイク
execute anchored eyes positioned ^ ^-0.85 ^5 unless entity @e[tag=BurstCommand,tag=!Center,scores={ParentID=0,Burst=0},distance=..64] run function skill:burst/break

#バーストコマンド入力
execute anchored eyes positioned ^ ^-0.85 ^5 as @e[tag=BurstCommand,scores={ParentID=0},distance=..6,limit=1,sort=nearest] if entity @s[tag=!Center,scores={Burst=0}] run function makeup:skill/burst/command/hit
execute anchored eyes positioned ^ ^-0.85 ^5 as @e[tag=BurstCommand,scores={ParentID=0},distance=..6,limit=1,sort=nearest] if entity @s[tag=!Center] run scoreboard players set @s Burst 1

#パーティクル表示
execute anchored eyes positioned ^ ^-0.85 ^5 at @e[tag=BurstCommand,scores={ParentID=0,Burst=0},distance=..6] positioned ^ ^0.85 ^ run function makeup:skill/burst/command/on
execute anchored eyes positioned ^ ^-0.85 ^5 at @e[tag=BurstCommand,scores={ParentID=0,Burst=1},distance=..6] positioned ^ ^0.85 ^ run function makeup:skill/burst/command/off

scoreboard players operation * ParentID += @s OhMyDatID

scoreboard players remove @s Burst 1
