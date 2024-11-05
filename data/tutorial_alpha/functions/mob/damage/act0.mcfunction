tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"ダメージ表示"}]},"\n",{"translate":"Mobにダメージを与えると、与えたダメージ量が表示されます。\n弱点属性で攻撃すると、金色の数値と弱点属性のアイコンが表示されます。\n回復される属性で攻撃すると、緑色の数値と回復属性のアイコンが表示されます。\n\n属性は5つあって、左から炎、氷、雷、光、闇を表します。"},"\n",{"text":"fcnld","font":"element"}]

tag @e[tag=Mob,distance=..3] add Garbage
summon armor_stand ~ ~ ~-1 {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Neutrality,Blow,00Woolscaffold,SpawnParticles],Level:1}]]}}]}

function makeup:tutorial_alpha/sound