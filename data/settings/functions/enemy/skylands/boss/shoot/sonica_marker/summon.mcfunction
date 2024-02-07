#Function
# 見た目召喚
    summon item_display ~ ~ ~ {Tags:["Head","SonicAMain","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["Body0","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["Body1","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["LeftArm0","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["LeftArm1","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["LeftLeg0","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["LeftLeg1","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["RightArm0","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["RightArm1","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["RightLeg0","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["RightLeg1","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["Sword","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["WingRight","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
    summon item_display ~ ~ ~ {Tags:["WingLeft","Initialized"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}

# 騎乗させる
    ride @e[distance=..0.01,tag=Body0,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
    ride @e[distance=..0.01,tag=Body1,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
    ride @e[distance=..0.01,tag=LeftArm0,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
    ride @e[distance=..0.01,tag=LeftArm1,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
    ride @e[distance=..0.01,tag=LeftLeg0,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
    ride @e[distance=..0.01,tag=LeftLeg1,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
    ride @e[distance=..0.01,tag=RightArm0,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
    ride @e[distance=..0.01,tag=RightArm1,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
    ride @e[distance=..0.01,tag=RightLeg0,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
    ride @e[distance=..0.01,tag=RightLeg1,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
    ride @e[distance=..0.01,tag=Sword,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
    ride @e[distance=..0.01,tag=WingRight,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
    ride @e[distance=..0.01,tag=WingLeft,limit=1] mount @e[distance=..0.01,tag=SonicAMain,limit=1]
