
#分身を作成する
summon armor_stand ~ ~ ~ {Tags:[BurstShadow,Shadow.Left,Initialized],Invisible:true,Invulnerable:true,NoGravity:true,CustomNameVisible:false}
summon armor_stand ~ ~ ~ {Tags:[BurstShadow,Shadow.Right,Initialized],Invisible:true,Invulnerable:true,NoGravity:true,CustomNameVisible:false}

tag @s add TEMP
execute in area:control_area run data modify block 2 3 2 Text1 set value '[{"translate":"%1$sの分身","color":"#00602C","with":[{"selector":"@a[tag=TEMP]"}]}]'
execute as @e[type=!player,tag=BurstShadow,distance=..0] in area:control_area run data modify entity @s CustomName set from block 2 3 2 Text1
tag @s remove TEMP
execute in area:control_area run function skill:burst/ninja/shadow/name

scoreboard players operation @e[type=!player,tag=BurstShadow,distance=..0] ParentID = @s OhMyDatID
tag @s add BurstShadow

# OhMyDatIDの取得
execute as @e[type=!player,tag=BurstShadow,distance=..0] run function oh_my_dat:please

# NativeTask登録
scoreboard players add @e[type=!player,tag=BurstShadow,distance=..0] NativeFlag 1

# スニーク状態になる
scoreboard players set @e[type=!player,tag=BurstShadow,distance=..0] SneakTime 2