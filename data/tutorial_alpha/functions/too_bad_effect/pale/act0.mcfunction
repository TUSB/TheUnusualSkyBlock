tellraw @a[distance=..7] ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Pale"}]}]},"\n",{"translate":"死亡後も%1$sされないが\n%2$sしか付与されない。\n最大9段階まで%3$sする。\n%4$sことでのみ%1$sできる。","color":"white","with":[{"translate":"解除","color":"green"},{"translate":"1度の生に1度","color":"aqua"},{"translate":"最大体力が減少","color":"red"},{"translate":"温泉に入る","color":"green"}]}]

function makeup:tutorial_alpha/sound

give @a[distance=..7] minecraft:splash_potion{tutorial_item:true,CustomPotionColor:2063390,CustomPotionEffects:[{Duration:40,Id:14b,Amplifier:10b}],display:{ Name:'[{"translate":"ペイル","color":"red","bold":true}]'}}
