tellraw @a[distance=..7] ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Burn"}]}]},"\n",{"translate":"%1$sのデバフ。\n毎秒%2$sを受ける。\n時間経過で解除され、通常の炎上と\n同じく%3$sことで解除可能。","color":"white","with":[{"translate":"炎属性","color":"red"},{"translate":"火属性のダメージ","color":"red"},{"translate":"水に入る","color":"blue"}]}]

function makeup:tutorial_alpha/sound

# 特殊デバフ最初のみアイテムを消す
clear @a[distance=..7] #item:all{tutorial_item:true}
give @a[distance=..7] minecraft:splash_potion{tutorial_item:true,CustomPotionColor:12522773,CustomPotionEffects:[{Duration:160,Id:14b,Amplifier:3b}],display:{ Name:'[{"translate":"火だるま","color":"red","bold":true}," ",{"text":"(8s)"}]'}}
