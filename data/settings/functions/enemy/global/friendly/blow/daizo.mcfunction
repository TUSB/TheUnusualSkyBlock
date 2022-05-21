### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Team:"Friendly",CustomName:'{"translate":"ダイゾー","color":"#00FF00","bold":true}',Team:"Friendly",PortalCooldown:800,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:spyglass",Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:shears",Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:bucket",Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:stone_shovel",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:stone_pickaxe",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:stone_axe",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:stone_hoe",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:stone_sword",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:carrot_on_a_stick",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:shield",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:crossbow",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:trident",tag:{display:{Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(I)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"謎",Tier:1}},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:arrow",Count:32b},maxUses:8}]},VillagerData:{level:99,profession:"cartographer",type:"plains"},DeathLootTableSeed:6L,Tags:[Mob,DelayedData,CooldownRequired,LimitedTrades,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/vanilla_item/tier1/carved_seal_items",Count:1,Chance:1d}]
