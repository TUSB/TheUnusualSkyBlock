tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Burn"}]}]},"\n",{"translate":"%1$sのデバフ。\n毎秒%2$sを受けます。\n時間経過で解除され、通常の炎上と同じく%3$sことで解除できます。","color":"white","with":[{"translate":"炎属性","color":"red"},{"translate":"火属性のダメージ","color":"red"},{"translate":"水に入る","color":"blue"}]}]

function makeup:tutorial_alpha/sound

# 特殊デバフ最初のみアイテムを消す
clear @s #item:all{tutorial_item:true}
give @s minecraft:splash_potion{tutorial_item:true,CustomPotionColor:12522773,custom_potion_effects:[{duration:160,id:"minecraft:invisibility",amplifier:3b}],display:{ Name:'[{"translate":"火だるま","color":"red","bold":true}," ",{"text":"(8s)"}]'}}
