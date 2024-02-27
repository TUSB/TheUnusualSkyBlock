#難易度修正
difficulty hard

#エンチャント・金床 schedule 再起動
schedule function item:enchant/enchanting_table/schedule 3s
schedule function item:lapidary/anvil/schedule 3s

#凍結 schedule 再起動
execute if entity @s[tag=Freeze] run schedule function effects:freeze/fix 1t

#リスト・アイテム キャンセル
tag @s remove SelectRestoreItem

#スキル用タグリセット
tag @s remove SummonPixely
tag @s remove DigTomb

#進捗解除
advancement revoke @s only item:init_tusb_memory
advancement revoke @s only item:engraving
advancement revoke @s only item:jewel_bundle
advancement revoke @s only item:emerald_bundle
advancement revoke @s only area:jump_to/cloudia/start
advancement revoke @s only area:jump_to/cloudia/skylands
advancement revoke @s only area:jump_to/desert/skylands
advancement revoke @s only area:jump_to/flying_island/skylands
advancement revoke @s only area:jump_to/gullivers_land/skylands_1
advancement revoke @s only area:jump_to/gullivers_land/skylands_2
advancement revoke @s only area:jump_to/imaginary_space/skylands
advancement revoke @s only area:jump_to/skylands/cloudia
advancement revoke @s only area:jump_to/skylands/desert
advancement revoke @s only area:jump_to/skylands/flying_island
advancement revoke @s only area:jump_to/skylands/imaginary_space
advancement revoke @s only area:jump_to/skylands/nether
advancement revoke @s only area:jump_to/skylands/tocult_colde
advancement revoke @s only area:jump_to/skylands/underworld
advancement revoke @s only area:jump_to/underworld/skylands

#プレイヤーゲーム設定
function player:game_settings/show

#v13Alpha 進捗更新
function enemy:break_spawner/alpha_advancements/update

# バースト必要値 更新
execute unless score $World Burst matches -1 run function skill:burst/required_amount

execute unless score $World Burst matches -1 run function skill:burst/bossbar

# バーストリセット
    scoreboard players reset @s Burst
    function skill:burst/summoner/element/reset

scoreboard players reset @s LeaveGame
