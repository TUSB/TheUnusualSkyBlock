##############################
### TIPS表示
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $6 Const

execute if score $Random Global matches 0 run tellraw @s {"text":"[TIPS] ベッドで寝るとHPやMPが全回復します。"}
execute if score $Random Global matches 1 run tellraw @s {"text":"[TIPS] 交易島の村人は、島から離れすぎると、島に戻ってしまいます。"}
execute if score $Random Global matches 2 run tellraw @s {"text":"[TIPS] 岩盤やバリアには気を付けて！ 埋まると死んでしまいます。"}
execute if score $Random Global matches 3 run tellraw @s {"text":"[TIPS] 空腹状態で戦うのは危険です！ MPが回復しません。"}
execute if score $Random Global matches 4 run tellraw @s {"text":"[TIPS] ３秒間スニークすると、バーストゲージを消費して、特殊なオーラを纏うことができます。"}
execute if score $Random Global matches 5 run tellraw @s {"text":"[TIPS] 10秒間スニークすると、プレイヤー情報の表示や設定ができます。"}
