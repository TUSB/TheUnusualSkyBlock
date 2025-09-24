### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"ロストメイジの闇魔法","color":"#FFFFFF"}',Silent:1b,PortalCooldown:60,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:crying_obsidian",count:1}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"step",Speed:0.5d}],Attack:[{Name:"function",Tags:[Desert,Ground,Shoot,LostMage,DarkBuff]},{Condition:[{Name:"random_chance",Chance:0.3d}],Name:"function",Tags:[Desert,Ground,Shoot,LostMage,DarkCurse]}]}
