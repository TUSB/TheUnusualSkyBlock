#メインハンドを削除
item replace entity @s weapon.mainhand with air
#頭装備があればメインハンドに移す
item replace entity @s weapon.mainhand from entity @s armor.head
#頭装備を更新
item replace entity @s armor.head with warped_fungus_on_a_stick
item modify entity @s armor.head item:storage/item
#透明化付与
function effects:invisible/wearable_invisible