tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Freeze"}]}]},"\n",{"translate":"%1$sのデバフ。\n3秒間TUSBメモリーを除く%2$s。\n炎上、火だるま状態では凍結しません。","color":"white","with":[{"translate":"氷属性","color":"aqua"},{"translate":"一切の行動がとれなくなります","color":"red"}]}]

function makeup:tutorial_alpha/sound

give @s minecraft:splash_potion{tutorial_item:true,CustomPotionColor:5233912,custom_potion_effects:[{duration:40,id:"minecraft:invisibility",amplifier:4b}],display:{ Name:'[{"translate":"凍結","color":"red","bold":true}]'}}
