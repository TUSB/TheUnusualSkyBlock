#Function
# アイテムディスプレイを実行者に
    execute as @e[type=item_display,distance=..0.1] run tag @s add Garbage
# 演出
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
    playsound entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 1 1
# ボスドロ召喚
    summon item ~0.5 ~ ~0.5 {NoGravity:1b,Glowing:1b,Health:32767,Item:{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:11,Unbreakable:true,display:{Name:'[{"translate":"a","color":"#38FFE4","obfuscated":true,"italic":false},{"translate":"ソニックセイバー","color":"#38FFE4","bold":true,"obfuscated":false,"italic":false},{"translate":"a","color":"#38FFE4","obfuscated":true,"italic":false}]',Lore:['{"translate":"魔石によってコーティングされた碧色に輝く剣","color":"#38FFE4","italic":false}','{"translate":"音速で振ろうともその剣身が砕かれることはない","color":"#38FFE4","italic":false}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" ソニックバースト"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"ソニックバースト",Level:1,Interval:5,Trigger:"近接攻撃する",Count:9999},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"カスタム",Amount:20d,Operation:0,UUID:[I;11,0,0,10],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"カスタム",Amount:0.1d,Operation:0,UUID:[I;11,0,0,20],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"カスタム",Amount:150d,Operation:0,UUID:[I;11,0,0,40],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"カスタム",Amount:9999d,Operation:0,UUID:[I;11,0,0,50],Slot:"mainhand"}]}}}
    summon item ~-0.5 ~ ~-0.5 {NoGravity:1b,Glowing:1b,Health:32767,Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{HideFlags:64,Unbreakable:true,display:{Name:'[{"translate":"a","color":"#38FFE4","obfuscated":true,"italic":false},{"translate":"ウォーデニウムアーマー","color":"#38FFE4","bold":true,"obfuscated":false,"italic":false},{"translate":"a","color":"#38FFE4","obfuscated":true,"italic":false}]',Lore:['[{"text":"❖ ","color":"3","italic":false},{"translate":"%1$s%2$s(VII)","color":"white","with":[{"translate":"竜鱗の"},{"translate":"刻印"}]}]','{"translate":"ウォーデンの体内に生成された魔石より作られた","color":"#38FFE4","italic":false}','{"translate":"軽量かつとてつもなく強固な鎧","color":"#38FFE4","italic":false}'],color:3735524},Engraving:{EnchantID:"竜鱗",Tier:7},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"カスタム",Amount:0.25d,Operation:1,UUID:[I;22,0,0,11],Slot:"chest"},{AttributeName:"generic.knockback_resistance",Name:"カスタム",Amount:0.3d,Operation:0,UUID:[I;22,0,0,20],Slot:"chest"},{AttributeName:"generic.movement_speed",Name:"カスタム",Amount:0.15d,Operation:1,UUID:[I;22,0,0,31],Slot:"chest"},{AttributeName:"generic.armor",Name:"カスタム",Amount:30d,Operation:0,UUID:[I;22,0,0,60],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"カスタム",Amount:30d,Operation:0,UUID:[I;22,0,0,70],Slot:"chest"},{AttributeName:"generic.luck",Name:"カスタム",Amount:10d,Operation:0,UUID:[I;22,0,0,80],Slot:"chest"}]}}}
