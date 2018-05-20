##############################
### からくり移動処理
##############################

###設定読み込み(TODO)


###マスタータグ付与(不要)
###リンクID読み込み
scoreboard players operation $PuppetID ID = @s ID

###子パペットタグ付与
execute as @e[tag=Puppet] if score @s ID = $PuppetID ID run tag @s add ActivePuppet

###糸切れ判定
execute at @e[distance=48..,tag=Puppet,limit=1] run function puppet_manager:string_cut

###次位置タグ付与(不要)
###パペット移動
##歩行モードの時
execute as @e[tag=PuppetNext] if score @s ID = $PuppetID ID at @s run tp @e[distance=..2,x_rotation=-85..90,tag=ActivePuppet,limit=1] ~ ~ ~
execute as @e[tag=ActivePuppet,limit=1] at @s if block ~ ~1 ~ minecraft:water run tp @s ~ ~1 ~

###落下距離計算(歩行モード時)
scoreboard players set $FallVillager Global 0
execute as @e[tag=ActivePuppet,limit=1] at @s if entity @e[distance=0,tag=PuppetNext,limit=1,nbt={OnGround:false}] run function puppet_manager:falling/calc
execute if score $FallPuppet Global matches 1.. if score $FallVillager Global matches 0 run function puppet_manager:falling/reset

###次ターゲットタグ付与
scoreboard players set $SeekFlag Global 0
##マスターが遠い場合
execute if entity @e[distance=32..,tag=ActivePuppet,limit=1] run function puppet_manager:set_next/master
##マスター優先の場合
execute if entity @s[tag=!ActiveTarget,tag=PriorPupMaster] run function puppet_manager:set_next/master
##近接攻撃優先の場合
execute if entity @s[tag=!ActiveTarget,tag=PriorPupClose] run function puppet_manager:set_next/close
##遠隔攻撃優先の場合
execute if entity @s[tag=!ActiveTarget,tag=PriorPupLong] run function puppet_manager:set_next/long
##ターゲットがない場合はマスター
execute if score $SeekFlag Global matches ..0 run function puppet_manager:set_next/master

###次位置設定
##歩行モードの時
execute store result score $SeekFlag Global if entity @e[tag=ActiveTarget,limit=1] as @e[tag=ActivePuppet,x_rotation=-90..85,limit=1] at @s positioned ~ ~300 ~ rotated ~ 0 positioned ^ ^ ^0.2 run function puppet_manager:set_next/position
execute if score $SeekFlag Global matches 1.. store result score $SeekFlag Global if entity @e[tag=ActivePuppet,x_rotation=-90..85,limit=1]

##それでもターゲットがない場合は落下判定(歩行モード時)
execute if score $SeekFlag Global matches ..0 as @e[tag=ActivePuppet,limit=1] at @s positioned ~ ~300 ~ run function puppet_manager:set_next/position

###遠隔攻撃優先の場合で、敵が近い時、向きをそちらにしたまま移動させる
execute if entity @s[tag=PriorPupLong] as @e[tag=ActivePuppet,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[distance=..16,tag=Mob,sort=nearest,limit=1]

###次ターゲットタグ削除
tag @e[tag=ActiveTarget] remove ActiveTarget

###次位置タグ削除(不要)

###パペットダメージ処理
execute if score $PuppetDamage Global matches 1.. as @e[tag=ActivePuppet,limit=1] at @s run function puppet_manager:damage_taken
###子パペットタグ削除
tag @e[tag=ActivePuppet,limit=1] remove ActivePuppet

###マスタータグ削除(不要)
