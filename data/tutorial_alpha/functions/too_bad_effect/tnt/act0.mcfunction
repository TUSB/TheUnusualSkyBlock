tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Tnt"}]}]},"\n",{"translate":"一定回数%1$sします。\n%2$sと解除されます。","color":"white","with":[{"translate":"ダメージを受けると爆発","color":"red"},{"translate":"水に入る","color":"blue"}]}]

function makeup:tutorial_alpha/sound

give @s minecraft:splash_potion{tutorial_item:true,CustomPotionColor:8722713,custom_potion_effects:[{duration:40,id:"minecraft:invisibility",amplifier:9b}],display:{ Name:'[{"translate":"トント","color":"red","bold":true}]'}}
