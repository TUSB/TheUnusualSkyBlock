
### 盾で防御

#装備を取得
function player:load_equipments

### スキル
# メインハンド
execute if data storage item: SelectedItem.tag.Skill{Trigger:"盾で攻撃を防ぐ"} run data modify storage item: Item set from storage item: SelectedItem
execute if data storage item: SelectedItem.tag.Skill{Trigger:"盾で攻撃を防ぐ"} run function skill:practice/
# オフハンド
execute unless data storage item: SelectedItem.tag.Skill{Trigger:"盾で攻撃を防ぐ"} if data storage item: Equipments[{Slot:-106b,tag:{Skill:{Trigger:"盾で攻撃を防ぐ"}}}] run data modify storage item: Item set from storage item: Equipments[{Slot:-106b}]
execute unless data storage item: SelectedItem.tag.Skill{Trigger:"盾で攻撃を防ぐ"} if data storage item: Equipments[{Slot:-106b,tag:{Skill:{Trigger:"盾で攻撃を防ぐ"}}}] run function skill:practice/

#トリガーリセット
advancement revoke @s only player:trigger/use/shield
