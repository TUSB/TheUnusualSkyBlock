tellraw @a[distance=..7] ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"スキルを使う"}]},"\n",{"translate":"付与した職業スキルを実際に使ってみよう。\n消費MPはスキルによって異なります。\nスキルのインターバルは同じスキルでもアイテム毎に異なります。\n複数のアイテムに同じスキルを付与することで、並行して使用するテクニックもあります。\n注意点として、現在のレベル以上の職業スキルは使用できません。"}]

execute as @a[distance=..7] run function tutorial_alpha:skill/use/item

function makeup:tutorial_alpha/sound