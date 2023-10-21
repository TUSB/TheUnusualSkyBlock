execute unless data entity @s SelectedItem.tag.AttributeModifiers run function settings:item/sign/soul_series/default_attributes/chestplate
data modify storage item: Soul.Attributes[].Slot set value "chest"
data modify storage item: Soul.Attributes[].UUID[0] set value 22