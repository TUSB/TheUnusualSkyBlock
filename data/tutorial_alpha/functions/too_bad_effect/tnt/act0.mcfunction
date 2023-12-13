tellraw @a[distance=..7] ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"特殊デバフ：%1$s","with":[{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Tnt"}]}]},"\n",{"translate":"一定回数%1$sする。\n%2$sと解除される。","color":"white","with":[{"translate":"ダメージを受けると爆発","color":"red"},{"translate":"水に入る","color":"blue"}]}]

function makeup:tutorial_alpha/sound

give @a[distance=..7] minecraft:splash_potion{tutorial_item:true,CustomPotionColor:8722713,CustomPotionEffects:[{Duration:40,Id:14b,Amplifier:9b}],display:{ Name:'[{"translate":"トント","color":"red","bold":true}]'}}
