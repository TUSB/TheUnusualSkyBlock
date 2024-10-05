tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"スキルを使う"}]},"\n",{"translate":"付与した職業スキルを実際に使ってみよう。\n消費MPはスキルによって異なります。\nスキルのインターバルは同じスキルでもアイテム毎に異なります。\n複数のアイテムに同じスキルを付与することで、並行して使用するテクニックもあります。\n注意点として、現在のレベル以上の職業スキルは使用できません。"}]

tag @e[tag=Mob,distance=..3] add Garbage
summon armor_stand ~ ~ ~-1 {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Neutrality,Blow,00Woolscaffold,SpawnParticles],Level:1}]]}}]}

function makeup:tutorial_alpha/sound