### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Team:"Friendly",CustomName:'{"translate":"キャロット・キャロットスキー","color":"#00FF00","bold":true}',PortalCooldown:1000,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:10b},sell:{id:"minecraft:spyglass",Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:shears",Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:bucket",Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:spectral_arrow",Count:16b},maxUses:8},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:lantern",Count:4b},maxUses:8},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:soul_lantern",Count:4b},maxUses:8},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:stone_shovel",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:stone_pickaxe",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:stone_axe",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:stone_hoe",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:stone_sword",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:carrot_on_a_stick",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:shield",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:crossbow",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:24b},sell:{id:"minecraft:trident",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:16b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:111,display:{Name:'{"translate":"もふもふ","color":"#0AC500","bold":true,"italic":false}',Lore:['{"translate":"召喚士監修の至高のもふもふ。","color":"#CCCCCC"}','[{"text":"","color":"white","italic":false},{"text":"S","font":"icon","color":"light_purple"},{"text":" フィールα"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"召喚士",SkillID:601,Name:"フィール",Level:1,Trigger:"手に持って右クリック",Count:3}},Count:1b},maxUses:8}]},VillagerData:{level:99,profession:"cartographer",type:"plains"},DeathLootTableSeed:6L,Tags:[Mob,DelayedData,CooldownRequired,LimitedTrades,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:4}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:carrot"},Count:1,CountRange:32,Chance:1d},{Loot:"item:group/mob/drop_item/villager",Count:1,Chance:0.6d}]
