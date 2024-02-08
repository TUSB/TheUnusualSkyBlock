#Function
# 一旦タグを戻す
    data modify entity @s Tags set from storage mob_data: Tags
# 周囲にあるひび割れレンガは全て虫入りに変えてしまう
    fill ~-5 ~-5 ~-5 ~5 ~5 ~5 infested_cracked_stone_bricks replace cracked_stone_bricks
# 周囲二方向が空洞かどうかを判定
# 空洞の場合、ダメージが通るようになるが空洞でない場合ダメージはほぼ通らない
    scoreboard players set # _ 0
    execute unless block ~1 ~ ~ infested_cracked_stone_bricks run scoreboard players add # _ 1
    execute unless block ~-1 ~ ~ infested_cracked_stone_bricks run scoreboard players add # _ 1
    execute unless block ~ ~1 ~ infested_cracked_stone_bricks run scoreboard players add # _ 1
    execute unless block ~ ~-1 ~ infested_cracked_stone_bricks run scoreboard players add # _ 1
    execute unless block ~ ~ ~1 infested_cracked_stone_bricks run scoreboard players add # _ 1
    execute unless block ~ ~ ~-1 infested_cracked_stone_bricks run scoreboard players add # _ 1
    execute if entity @s[tag=ColonyNoBlocked] if score # _ matches ..1 run function settings:enemy/skylands/boss/summon/silver_colony/tick_blocked
    execute if entity @s[tag=ColonyBlocked] if score # _ matches 2.. run function settings:enemy/skylands/boss/summon/silver_colony/tick_no_blocked
# ブロック状態かつダメージを受けている場合、容赦なく全快する
    execute if entity @s[tag=ColonyBlocked] if score @s HP < @s HPMax run function settings:enemy/skylands/boss/summon/silver_colony/tick_blocked_heal
# 耐性に変化があったとしても強制的に戻す
    execute if entity @s[tag=ColonyBlocked] unless entity @s[scores={ElementDark=0,ElementFire=0,ElementIce=0,ElementLight=0,ElementLightning=0}] run function settings:enemy/skylands/boss/summon/silver_colony/tick_blocked_element
# タグを再び保存（えぇ……）
    data modify storage mob_data: Tags set from entity @s Tags
