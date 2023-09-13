execute unless data entity @s SelectedItem.tag.AttributeModifiers run function settings:item/sign/soul_series/default_attributes/boots
data modify storage item: Soul.Attributes[].Slot set value "feet"
data modify storage item: Soul.Attributes[].UUID[0] set value 24