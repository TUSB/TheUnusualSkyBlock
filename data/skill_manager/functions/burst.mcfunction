##############################
### バースト発動
##############################

scoreboard players set #Aura MP 10000
scoreboard players set バースト MP 10000

execute as @a run function effect_manager:reload
tellraw @a [{"selector":"@s"},{"text":"を取り巻く空気が変わった！！！","color":"green"},{"text":"と思ったが気のせいだったようだ…。ちゃんちゃん。","color":"black"}]
