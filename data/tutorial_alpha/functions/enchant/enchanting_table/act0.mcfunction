tellraw @a[distance=..7] ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"変異したエンチャントテーブル"}]},"\n",{"translate":"魔石の影響により、普通のエンチャントテーブルでは力が足りなくなった。\n変異したエンチャントテーブルを使うことで魔石のエンチャントをアイテムに付与することができる。\n近くにエンチャントテーブルがあるので使ってみると良い。"}]

execute as @a[distance=..7] at @s run function tutorial_alpha:enchant/enchanting_table/item

function makeup:tutorial_alpha/sound