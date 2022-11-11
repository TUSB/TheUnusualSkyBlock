### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,Enemy,DelayedData,CallOnTimeOut,CallOnDamage,TickingRequired,LimitedTrades,HasLootTable,WanderingVillager],CustomName:'{"translate":"商業ゴブリン・ジャンクスフィカ","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",VillagerData:{level:99,profession:"fletcher",type:"swamp"},DeathLootTableSeed:6L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,50,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2UxNWE5ZGZjNDhiNWQ4ODY5M2UxYjQxNjE4MmMyNWQyM2M0Nzg3ZWMyYTBiMGNhOTFmYWNkMGZjMjhjZmE1NyJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/tusb_item/all/summon_trap",Count:1,Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:4d}},{Name:"MinHP",Inverse:true,HP:50}],Name:"Message",Message:'{"translate":"オ客サン。争イ事ナラ他所デヤンナ！ アバヨ！","color":"#870050"}'},{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:4d}},{Name:"MinHP",Inverse:true,HP:50}],Name:"Damage",Mob:{Physical:9999},Distance:{Max:0.1d}}]}
