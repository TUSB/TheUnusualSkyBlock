
### リアクティブヒール 分岐

execute unless data storage skill: Skill{Trigger:"ダメージを受ける"} run function skill:act/knight/reactive_heal/toggle
execute if data storage skill: Skill{Trigger:"ダメージを受ける"} run function skill:act/knight/reactive_heal/heal
