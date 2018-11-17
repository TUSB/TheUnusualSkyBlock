##############################
### からくり移動処理
##############################

###設定読み込み(TODO)
###落下チェックの高さ上限
scoreboard players operation $FallingHeight PuppetScore = @s PupMobility


###マスタータグ付与(不要)
###リンクID読み込み
scoreboard players operation $PuppetID ID = @s ID

###子パペットタグ付与
execute as @e[tag=Puppet] if score @s ID = $PuppetID ID run tag @s add ActivePuppet

###パペット不在時タグ削除
execute unless entity @e[tag=ActivePuppet,limit=1] run tag @s remove WithPuppet

###ダウンサーチャーのみタグ付与
execute as @e[tag=DownSearcher] if score @s ID = $PuppetID ID run tag @s add ActiveDownSearcher

###アクロバット移動フラグ取得
scoreboard players set $Acrobat PuppetScore 0
###アクロバット適用かどうか判定
execute if score @s PupFlyability matches 100.. at @e[tag=ActivePuppet,limit=1] unless block ~ ~ ~ minecraft:water run scoreboard players set $Acrobat PuppetScore 1
execute if score @s PupSwimmability matches 100.. at @e[tag=ActivePuppet,limit=1] if block ~ ~ ~ minecraft:water run scoreboard players set $Acrobat PuppetScore 1

###落下チェック(パペット移動内に移動)
#scoreboard players set $Falling PuppetScore 0
#execute at @e[tag=ActivePuppet,limit=1] positioned ~ ~1.8 ~ unless entity @e[dy=10,tag=ActiveDownSearcher,limit=1] run scoreboard players set $Falling PuppetScore 1

###上昇チェック
scoreboard players set $CrimbingGap PuppetScore 0
execute as @e[tag=ActivePuppet,limit=1] at @s positioned ~-1 ~-0.5 ~-1 unless entity @e[dx=2,dy=-10,dz=2,tag=ActiveDownSearcher,limit=1] run scoreboard players set $CrimbingGap PuppetScore 1
execute if score $CrimbingGap PuppetScore matches 1.. as @e[tag=UpSearcher] if score @s ID = $PuppetID ID at @s positioned ~-1 ~-1 ~-1 if entity @e[dx=2,dy=-10,dz=2,tag=ActiveDownSearcher,limit=1] run function puppet_manager:crimbing/calc_gap

####次位置タグ付与(不要)
####パペット移動
execute as @e[tag=PuppetNext] if score @s ID = $PuppetID ID at @s run function puppet_manager:set_next/move_to_next

###登れるときは登る
execute if score $FallingHeight PuppetScore matches ..99 if score $CrimbingGap PuppetScore matches 50..100 positioned as @e[tag=ActiveDownSearcher,limit=1] run tp @e[tag=ActivePuppet,limit=1] ~ ~ ~
execute if score $FallingHeight PuppetScore matches 100..199 if score $CrimbingGap PuppetScore matches 50..300 positioned as @e[tag=ActiveDownSearcher,limit=1] run tp @e[tag=ActivePuppet,limit=1] ~ ~ ~
execute if score $FallingHeight PuppetScore matches 200.. if score $CrimbingGap PuppetScore matches 50..500 positioned as @e[tag=ActiveDownSearcher,limit=1] run tp @e[tag=ActivePuppet,limit=1] ~ ~ ~

###水中の時(アクロバットOFFの時)
execute if score $Acrobat PuppetScore matches ..0 as @e[tag=ActivePuppet,limit=1] at @s if block ~ ~1.5 ~ minecraft:water run tp @s ~ ~1 ~

###糸切れ判定
execute if entity @s[scores={Age=1}] at @e[tag=ActivePuppet,limit=1] run function puppet_manager:string_cut
execute at @e[distance=36..,tag=ActivePuppet,limit=1] run function puppet_manager:string_cut

###次ターゲットタグ付与
scoreboard players set $SeekFlag PuppetScore 0
##マスターが遠い場合
execute if entity @e[distance=24..,tag=ActivePuppet,limit=1] run function puppet_manager:set_next/master/turn
##マスター優先の場合
execute if entity @s[tag=!ActiveTarget,tag=PupPriorMaster] run function puppet_manager:set_next/master/turn
##近接攻撃優先の場合
execute if entity @s[tag=!ActiveTarget,tag=PupPriorClose] run function puppet_manager:set_next/close/turn
##遠隔攻撃優先の場合
execute if entity @s[tag=!ActiveTarget,tag=PupPriorLong] run function puppet_manager:set_next/long/turn
##ターゲットがない場合はマスター
execute if score $SeekFlag PuppetScore matches ..0 run function puppet_manager:set_next/master/turn

###移動速度取得
##アクロバットOFF・落下OFFの時、Speed = Mobility
##アクロバットOFF・落下ON の時、Speet = Mobility
execute if score $Acrobat PuppetScore matches ..0 run scoreboard players operation $Speed PuppetScore = @s PupMobility
##アクロバットON ・落下ON の時、Speed = Flyablility or Swimmability
execute if score $Acrobat PuppetScore matches 1.. if score $Falling PuppetScore matches 1.. run scoreboard players operation $Speed PuppetScore = @s PupSwimmability
execute if score $Acrobat PuppetScore matches 1.. if score $Falling PuppetScore matches 1.. run scoreboard players operation $Speed PuppetScore > @s PupFlyability
##アクロバットON ・落下OFFの時、Speed = Mobility
execute if score $Acrobat PuppetScore matches 1.. if score $Falling PuppetScore matches ..0 run scoreboard players operation $Speed PuppetScore = @s PupMobility

###次位置設定
##アクロバットOFFの時
execute if score $Acrobat PuppetScore matches ..0 store result score $SeekFlag PuppetScore if entity @e[tag=ActiveTarget,limit=1] as @e[tag=ActivePuppet,limit=1] at @s positioned ~ ~300 ~ rotated ~ 0 run function puppet_manager:set_next/position
##アクロバットOFFの時で、ターゲットが結局ない時、落下を試みる
execute if score $Acrobat PuppetScore matches ..0 if score $SeekFlag PuppetScore matches ..0 as @e[tag=ActivePuppet,limit=1] at @s positioned ~ ~300 ~ rotated ~ 0 run function puppet_manager:set_next/falling_only
##アクロバットONの時
execute if score $Acrobat PuppetScore matches 1.. if entity @e[tag=ActiveTarget,limit=1] as @e[tag=ActivePuppet,limit=1] at @s positioned ~ ~300 ~ run function puppet_manager:set_next/position

###攻撃可能距離で、敵が近い時、向きをそちらにしたまま移動させる
execute if entity @s[tag=PupHasClose,tag=!PupHasLong] as @e[tag=ActivePuppet,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[distance=..3,tag=Mob,sort=nearest,limit=1]
execute if entity @s[tag=PupHasLong] as @e[tag=ActivePuppet,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[distance=..17,tag=Mob,sort=nearest,limit=1]


###次ターゲットタグ削除
tag @e[tag=ActiveTarget] remove ActiveTarget

###次位置タグ削除(不要)

###ダウンサーチャーのみタグ付与
tag @e[tag=ActiveDownSearcher] remove ActiveDownSearcher

###子パペットタグ削除
tag @e[tag=ActivePuppet,limit=1] remove ActivePuppet

###マスタータグ削除(不要)
