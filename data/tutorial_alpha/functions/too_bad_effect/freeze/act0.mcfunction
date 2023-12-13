tellraw @a[distance=..7] ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Freeze"}]}]},"\n",{"translate":"%1$sのデバフ。\n3秒間TUSBメモリーを除く\n%2$s。\n炎上、火だるま状態では凍結しない。","color":"white","with":[{"translate":"氷属性","color":"aqua"},{"translate":"一切の行動がとれなくなる","color":"red"}]}]

function makeup:tutorial_alpha/sound

give @a[distance=..7] minecraft:splash_potion{tutorial_item:true,CustomPotionColor:5233912,CustomPotionEffects:[{Duration:40,Id:14b,Amplifier:4b}],display:{ Name:'[{"translate":"凍結","color":"red","bold":true}]'}}
