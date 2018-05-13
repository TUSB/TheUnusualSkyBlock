##############################
### スキル設定場進入時処理
##############################

###ディメンションスコア設定
scoreboard players set @s Dimension 10
###ゲームモード設定
tag @s add Adv
###共通処理
function area_manager:on_change/common
###表示処理
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Skill Setting Field =","italic":"true","color":"white"}
title @s title {"text":"スキル設定場","color":"gray","bold":"true","underlined":"true"}

###お試しセット受け取り
give @s[tag=!TrialSetReceived] minecraft:bat_spawn_egg{display:{Name:"{\"text\":\"§bお試しセットの印玉\"}",Lore:["§rモードスキル用お試しセットが入っている。","§rなくなったら交易島のアルバイトから買おう。"]},ench:[{id:99s}],EntityTag:{DeathTime:19s,ActiveEffects:[{Id:7b,Duration:100,Amplifier:5b,ShowParticles:false},{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],Tags:[RewardEgg,TypeChecked],DeathLootTable:"item_manager:signs/skillkit"},CanPlaceOn:["#minecraft:all"],HideFlags:16} 1
tellraw @s[tag=!TrialSetReceived] {"translate":"* %1$s を受け取った。","with":[{"text":"お試しセットの印玉","color":"aqua"}]}
tag @s[tag=!TrialSetReceived] add TrialSetReceived
