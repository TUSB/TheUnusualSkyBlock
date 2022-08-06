execute if data storage mob_data: Settings.Target run function enemy:ai/call/settings/target/
execute if data storage mob_data: Settings.Target if data storage mob_data: Settings{Anchor:"Eyes"} if score 00000000-0000-0000-0000-000000000002 _ matches 1 positioned ~ ~-1.62 ~ facing entity 0-0-0-0-2 feet positioned ~ ~1.62 ~ run tp 0-0-0-0-1 ^ ^ ^ ~ ~
execute if data storage mob_data: Settings.Target unless data storage mob_data: Settings{Anchor:"Eyes"} if score 00000000-0000-0000-0000-000000000002 _ matches 1 facing entity 0-0-0-0-2 feet run tp 0-0-0-0-1 ^ ^ ^ ~ ~
