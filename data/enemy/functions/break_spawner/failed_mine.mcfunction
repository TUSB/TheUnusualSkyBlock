#> enemy:break_spawner/failed_mine
#
# 復元処理
#
# @within function enemy:break_spawner/enemy_count

# アイテムキル
    execute as @e[distance=..2,type=item,nbt={Item:{tag:{DamageItem:1b}}},sort=nearest,limit=1] run kill @s
    execute as @e[distance=..2,type=item,nbt={Item:{tag:{DoubleBreak:1b}}},sort=nearest,limit=1] run kill @s

# カウントが減っていないことを表示
    execute store result score _ _ run data get entity @s item.tag.Count 1
    setblock ~ ~ ~ spawner destroy
# ダメージ表示
    data modify storage popup: data set value {prefix:'" "',duration:0.5,value_prefix:'< ',value_suffix:' >',format:'{"text":"","color":"#BBBBBB"}',size:1.0}
    execute store result storage popup: data.value int 1 run scoreboard players get _ _
    execute positioned ~ ~1.35 ~ run function #popup:

# 岩盤化済みのスポナーを破壊したらメッセージで教える
    execute if entity @e[tag=FailedMine,distance=..0.01] run tellraw @a[distance=..8] {"translate":"周囲の敵によってスポナー破壊を妨害された！","color":"#FF5555"}

# 岩盤のブロックをかぶせることで壊せないことを表示
# この対応は他で真似しない方がいいよ
    summon minecraft:item_display ~ ~ ~ {Tags:["Spawner","FailedMine","HasAI"],glow_color_override:-1,shadow_radius:0f,billboard:"fixed",shadow_strength:1f,width:0f,height:0f,item_display:"none",view_range:1f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.02f,1.02f,1.02f]},item:{id:"bedrock",Count:1b,tag:{Enchantments:[{}]}}}
    execute as @e[distance=..0.01,tag=FailedMine,tag=!Initialized] run function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Current:50},Loop:{Current:1},Call:[{Name:"Kill"}]}]}]}

# 岩盤化チュートリアルを達成
    advancement grant @a[distance=..8] only advancement:tutorial/secret18

# タグ付け
    tag @s add Failed

# 経験値オーブをKill
    kill @e[distance=..2,type=experience_orb]

# 演出
    function makeup:enemy/break_spawner/failed_mine