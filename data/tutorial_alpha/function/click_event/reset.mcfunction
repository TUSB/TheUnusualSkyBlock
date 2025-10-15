#> tutorial_alpha:click_event/reset

schedule clear tutorial_alpha:click_event/loop
scoreboard objectives remove Tutorial.clickEvent
kill @e[tag=Tutorial.clickEvent]
