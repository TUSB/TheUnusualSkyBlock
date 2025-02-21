tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"スキルを使う"}]},"\n",{"translate":"付与した職業スキルを実際に使ってみよう。\n消費MPはスキルによって異なる。\nスキルのインターバルは、同じスキルでもアイテム毎に別で保存される。\n複数のアイテムに同じスキルを付与すれば、並行して使用することもできる。\n現在のレベル以上の職業スキルは使用できない。"}]

tag @e[tag=Mob,distance=..3] add Garbage
summon armor_stand ~ ~ ~-1 {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Neutrality,Blow,00Woolscaffold,SpawnParticles],Level:1}]]}}]}

function makeup:tutorial_alpha/sound