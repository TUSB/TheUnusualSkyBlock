#Function
data modify entity @s PortalCooldown set value 1000
data modify entity 0-0-0-0-0 Tags set from storage mob_data: Tags
tag 0-0-0-0-0 remove Garbage
data modify storage mob_data: Tags set from entity 0-0-0-0-0 Tags
data modify entity 0-0-0-0-0 Tags set value ["Initialized"]
