
### リアクティブヒール 分岐

execute if data storage skill: Skill{Trigger:"人参棒を使用"} run function skill:act/knight/reactive_heal/toggle
execute if data storage skill: Skill{Trigger:"ダメージを受ける"} run function skill:act/knight/reactive_heal/heal
