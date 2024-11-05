tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Confuse"}]}]},"\n",{"translate":"%1$sのデバフ。\n%2$sなります。\n時間経過で回復します。","color":"white","with":[{"translate":"光属性","color":"yellow"},{"translate":"進行方向が分からなく","color":"red"}]}]

function makeup:tutorial_alpha/sound

give @s minecraft:splash_potion{tutorial_item:true,CustomPotionColor:167772155,custom_potion_effects:[{duration:40,id:"minecraft:invisibility",amplifier:6b}],display:{ Name:'[{"translate":"混乱","color":"red","bold":true}]'}}
