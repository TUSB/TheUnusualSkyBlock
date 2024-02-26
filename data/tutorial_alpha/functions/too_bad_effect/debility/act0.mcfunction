tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Debility"}]}]},"\n",{"translate":"現在の%1$sまで減少する。","color":"white","with":[{"translate":"体力が一列","color":"red"}]}]

function makeup:tutorial_alpha/sound

give @s minecraft:splash_potion{tutorial_item:true,CustomPotionColor:7356464,CustomPotionEffects:[{Duration:40,Id:14,Amplifier:11b}],display:{ Name:'[{"translate":"衰弱","color":"red","bold":true}]'}}
