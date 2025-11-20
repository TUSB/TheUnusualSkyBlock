#> tutorial_alpha:too_bad_effect/doom/act0

tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}]}]},"\n",{"translate":"死の%1$sを開始し、\nカウントが0になると%2$sします。\n%3$sを服用すると解除できます。","color":"white","with":[{"translate":"カウントダウン","color":"red"},{"translate":"即死","color":"dark_red"},{"translate":"聖水","color":"aqua"}]}]

function makeup:tutorial_alpha/sound

give @s minecraft:splash_potion[custom_data={tutorial_item:true},potion_contents={custom_color:4194491,custom_effects:[{duration:40,id:"minecraft:invisibility",amplifier:1b}]},custom_name='[{"translate":"死の宣告","color":"red","bold":true}," ",{"text":"(10)"}]']
give @s minecraft:splash_potion[custom_data={tutorial_item:true},potion_contents={custom_color:4194491,custom_effects:[{duration:40,id:"minecraft:invisibility",amplifier:2b}]},custom_name='[{"translate":"死の宣告","color":"red","bold":true}," ",{"text":"(3)"}]']
