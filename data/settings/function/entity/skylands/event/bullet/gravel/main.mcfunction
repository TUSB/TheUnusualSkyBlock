### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:falling_block",CustomName:'{"translate":"block.minecraft.gravel","color":"#FFFFFF"}',Time:0,DropItem:true,PortalCooldown:120,Tags:[TickingRequired,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {BlockState:{Name:"minecraft:gravel"}}
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sこの砂利は純度100%の砂利ではないようだ。","with":[{"translate":"【能力：なし】","color":"#00FF00"}]}]'
