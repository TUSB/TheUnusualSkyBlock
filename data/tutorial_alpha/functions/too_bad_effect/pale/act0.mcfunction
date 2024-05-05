tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Pale"}]}]},"\n",{"translate":"死亡後も%1$sされませんが、\n%2$sしか付与されません。\n最大9段階まで%3$sします。\n%4$sことでのみ%1$sできます。","color":"white","with":[{"translate":"解除","color":"green"},{"translate":"1度の生に1度","color":"aqua"},{"translate":"最大体力が減少","color":"red"},{"translate":"温泉に入る","color":"green"}]}]

function makeup:tutorial_alpha/sound

give @s minecraft:splash_potion{tutorial_item:true,CustomPotionColor:2063390,custom_potion_effects:[{duration:40,id:"minecraft:invisibility",amplifier:10b}],display:{ Name:'[{"translate":"ペイル","color":"red","bold":true}]'}}
