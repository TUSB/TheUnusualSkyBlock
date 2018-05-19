##############################
### からくり移動処理
##############################

###設定読み込み(TODO)


###マスタータグ付与(不要)
###リンクID読み込み
scoreboard players operation $PuppetID ID = @s ID

###子パペットタグ付与
execute as @e[tag=Puppet] if score @s ID = $PuppetID ID run tag @s add ActivePuppet

###次位置タグ付与(不要)
###パペット移動
execute as @e[tag=PuppetNext] if score @s ID = $PuppetID ID at @s run tp @e[distance=..3.5,tag=ActivePuppet,limit=1] ~ ~ ~

###次ターゲットタグ付与
scoreboard players set $SeekFlag Global 0
##マスターが遠い場合
execute if entity @e[distance=32..,tag=ActivePuppet,limit=1] run function puppet_manager:set_next_master
##マスター優先の場合
execute if entity @s[tag=!ActiveTarget,tag=PriorPupMaster] run function puppet_manager:set_next_master
##近接攻撃優先の場合
execute if entity @s[tag=!ActiveTarget,tag=PriorPupClose] run function puppet_manager:set_next_close
##遠隔攻撃優先の場合
execute if entity @s[tag=!ActiveTarget,tag=PriorPupLong] run function puppet_manager:set_next_long
##ターゲットがない場合はマスター
execute if score $SeekFlag Global matches ..0 run function puppet_manager:set_next_master

###次位置設定
execute if entity @e[tag=ActiveTarget,limit=1] as @e[tag=ActivePuppet,limit=1] at @s positioned ~ ~300 ~ positioned ^ ^ ^0.2 run function puppet_manager:set_next_position

###遠隔攻撃優先の場合で、敵が近い時、向きをそちらにしたまま移動させる
execute if entity @s[tag=PriorPupLong] as @e[tag=ActivePuppet,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[distance=..16,tag=Mob,sort=nearest,limit=1]

###次ターゲットタグ削除
tag @e[tag=ActiveTarget] remove ActiveTarget

###次位置タグ削除(不要)

###子パペットタグ削除
tag @e[tag=ActivePuppet] remove ActivePuppet

###マスタータグ削除(不要)
