### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:dolphin",CustomName:'{"translate":"アクアドルフィン","color":"#FF0000","bold":true}',Air:32767s,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,TickingRequired,DamageProjectile,EnemyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sを消す方法を誤って実行してしまい削除されてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"何を検索しますか？ ヒューマン。"}]'
