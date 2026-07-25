#> effect:too_bad_effect
### 特殊デバフ処理

execute if predicate effect:resist run function makeup:effect/too_bad_effect

execute if entity @s[advancements={effect:invisible={doom=true}}] unless predicate effect:resist run function effect:doom/apply
execute if entity @s[advancements={effect:invisible={doom=true}}] if predicate effect:resist run function effect:resist with storage effect: resist.too_bad_effect.doom
execute if entity @s[advancements={effect:invisible={super_doom=true}}] unless predicate effect:resist run function effect:doom/apply_super
execute if entity @s[advancements={effect:invisible={super_doom=true}}] if predicate effect:resist run function effect:resist with storage effect: resist.too_bad_effect.doom_super
execute if entity @s[advancements={effect:invisible={burn=true}}] unless predicate effect:resist run function effect:burn/apply
execute if entity @s[advancements={effect:invisible={burn=true}}] if predicate effect:resist run function effect:resist with storage effect: resist.too_bad_effect.burn
execute if entity @s[advancements={effect:invisible={freeze=true}}] unless predicate effect:resist run function effect:freeze/apply0
execute if entity @s[advancements={effect:invisible={freeze=true}}] if predicate effect:resist run function effect:resist with storage effect: resist.too_bad_effect.freeze
execute if entity @s[advancements={effect:invisible={palsy=true}}] unless predicate effect:resist run function effect:palsy/apply
execute if entity @s[advancements={effect:invisible={palsy=true}}] if predicate effect:resist run function effect:resist with storage effect: resist.too_bad_effect.palsy
execute if entity @s[advancements={effect:invisible={confuse=true}}] unless predicate effect:resist run function effect:confuse/apply
execute if entity @s[advancements={effect:invisible={confuse=true}}] if predicate effect:resist run function effect:resist with storage effect: resist.too_bad_effect.confuse
execute if entity @s[advancements={effect:invisible={curse=true}}] unless predicate effect:resist run function effect:curse/apply
execute if entity @s[advancements={effect:invisible={curse=true}}] if predicate effect:resist run function effect:resist with storage effect: resist.too_bad_effect.curse
execute if entity @s[advancements={effect:invisible={virus=true}}] unless predicate effect:resist run function effect:virus/apply
execute if entity @s[advancements={effect:invisible={virus=true}}] if predicate effect:resist run function effect:resist with storage effect: resist.too_bad_effect.virus
execute if entity @s[advancements={effect:invisible={tnt=true}}] unless predicate effect:resist run function effect:tnt/apply
execute if entity @s[advancements={effect:invisible={tnt=true}}] if predicate effect:resist run function effect:resist with storage effect: resist.too_bad_effect.tnt
execute if entity @s[advancements={effect:invisible={pale=true}}] unless predicate effect:resist run function effect:pale/apply
# ペイルはその生での２度目以降は減少を受けない
execute if entity @s[advancements={effect:invisible={pale=true}}] unless score @s PaleLevel matches ..-1 if predicate effect:resist run function effect:resist with storage effect: resist.too_bad_effect.pale
execute if entity @s[advancements={effect:invisible={debility=true}}] unless predicate effect:resist run function effect:debility/apply
execute if entity @s[advancements={effect:invisible={debility=true}}] if predicate effect:resist run function effect:resist with storage effect: resist.too_bad_effect.debility

execute if entity @a[distance=..32,scores={Burst=0..,Job=4}] run function skill:act/white_mage/clear/cure/level4
