### 剣の薙ぎ払い攻撃

### エンチャント
#剣能
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:剣能"}] run function skill:enchant/sweeping/apply

#属性ダメージ演出
execute at @e[tag=Mob,nbt=!{AbsorptionAmount:1000000f}] run function makeup:skill/enchant/elmental_damage/hit

##AbsorptionAmountリセット
execute as @e[tag=Mob,nbt=!{AbsorptionAmount:1000000f}] run function enemy:update_absorption_amount
#トリガーリセット
advancement revoke @s only player:trigger/hurt_entity/sword_attack_sweep
