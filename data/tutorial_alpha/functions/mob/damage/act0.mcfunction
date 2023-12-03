tellraw @a[distance=..7] ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"ダメージ表示"}]},"\n",{"translate":"Mobにダメージを与えると、どれぐらい与えたか表示される。\n弱点の属性を突くと、金色になって弱点属性のアイコンが表示される。\n回復される属性を突くと、緑色になって回復属性のアイコンが表示される。\n\n属性は5つあって、左から炎、氷、雷、光、闇になっている。"},"\n",{"text":"fcnld","font":"element"}]

tag @e[tag=Mob,distance=..3] add Garbage
summon armor_stand ~ ~ ~-1 {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Neutrality,Blow,00Woolscaffold,SpawnParticles],Level:1}]]}}]}

function makeup:tutorial_alpha/sound