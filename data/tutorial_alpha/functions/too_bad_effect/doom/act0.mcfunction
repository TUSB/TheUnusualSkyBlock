tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Doom"}]}]},"\n",{"translate":"死の%1$sを開始し、\nカウントが0になると%2$s。\n%3$sを服用すると解除できる。","color":"white","with":[{"translate":"カウントダウン","color":"red"},{"translate":"即死する","color":"dark_red"},{"translate":"聖水","color":"aqua"}]}]

function makeup:tutorial_alpha/sound

give @s minecraft:splash_potion{tutorial_item:true,CustomPotionColor:4194491,CustomPotionEffects:[{Duration:40,Id:14,Amplifier:1b}],display:{ Name:'[{"translate":"死の宣告","color":"red","bold":true}," ",{"text":"(10)"}]'}}
give @s minecraft:splash_potion{tutorial_item:true,CustomPotionColor:4194491,CustomPotionEffects:[{Duration:40,Id:14,Amplifier:2b}],display:{ Name:'[{"translate":"死の宣告","color":"red","bold":true}," ",{"text":"(3)"}]'}}
