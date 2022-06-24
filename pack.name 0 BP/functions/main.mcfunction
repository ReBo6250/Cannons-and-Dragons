# Main
    # Baby Dragon
        execute @e[type=rebo:baby_dragon,tag=has_rider] ~ ~ ~ function fly
        execute @e[type=rebo:baby_dragon,tag=has_rider,tag=!is_on_ground] ~ ~ ~ event entity @s e:fly
     # Dragon
        execute @e[type=rebo:dragon,tag=has_rider] ~ ~ ~ function fly
        execute @e[type=rebo:dragon,tag=has_rider,tag=!is_on_ground] ~ ~ ~ event entity @s e:fly
    # Pteranodon
        execute @e[type=rebo:pteranodon,tag=has_rider] ~ ~ ~ function fly
        execute @e[type=rebo:pteranodon,tag=has_rider,tag=!is_on_ground] ~ ~ ~ event entity @s e:fly
    # Pterodactyl
        execute @e[type=rebo:pterodactyl,tag=has_rider] ~ ~ ~ function fly
        execute @e[type=rebo:pterodactyl,tag=has_rider,tag=!is_on_ground] ~ ~ ~ event entity @s e:fly
    # Rhamphorhynchus
        execute @e[type=rebo:rhamphorhynchus,tag=has_rider] ~ ~ ~ function fly
        execute @e[type=rebo:rhamphorhynchus,tag=has_rider,tag=!is_on_ground] ~ ~ ~ event entity @s e:fly
    # Wyvern
        execute @e[type=rebo:wyvern,tag=!is_on_ground,tag=is_tamed] ~ ~ ~ event entity @s e:fly_seat_position
        execute @e[type=rebo:wyvern,tag=is_on_ground,tag=is_tamed] ~ ~ ~ event entity @s e:walk_seat_position

        execute @e[type=rebo:wyvern,tag=has_rider] ~ ~ ~ function fly
        execute @e[type=rebo:wyvern,tag=has_rider,tag=!is_on_ground] ~ ~ ~ event entity @s e:fly

        # Player 
            execute @a[tag=is_riding] ~ ~ ~ execute @e[type=!player,c=1] ~ ~ ~ execute @s[type=rebo:baby_dragon] ~ ~ ~ tag @p add is_riding_dragon
            execute @a[tag=is_riding] ~ ~ ~ execute @e[type=!player,c=1] ~ ~ ~ execute @s[type=rebo:dragon] ~ ~ ~ tag @p add is_riding_dragon
            execute @a[tag=is_riding] ~ ~ ~ execute @e[type=!player,c=1] ~ ~ ~ execute @s[type=rebo:wyvern] ~ ~ ~ tag @p add is_riding_dragon
            execute @a[tag=is_riding] ~ ~ ~ execute @e[type=!player,c=1] ~ ~ ~ execute @s[type=rebo:cannon] ~ ~ ~ tag @p add is_riding_cannon

                scoreboard objectives add t_reload dummy
                scoreboard objectives add c_fireballs dummy
                scoreboard objectives add c_cannonballs dummy

                scoreboard players add @a[tag=is_riding_dragon] t_reload 1
                scoreboard players add @a[tag=is_riding_cannon] t_reload 1

                scoreboard players add @a[scores={t_reload=40}] c_fireballs 1
                scoreboard players add @a[scores={t_reload=40}] c_cannonballs 1
                scoreboard players set @a[scores={t_reload=40}] t_reload 0


                title @a[tag=is_riding_dragon,scores={c_fireballs=!1..}] actionbar §gFireballs: §0█████§r
                title @a[tag=is_riding_dragon,scores={c_fireballs=1}] actionbar §gFireballs: █§0████§r
                title @a[tag=is_riding_dragon,scores={c_fireballs=2}] actionbar §gFireballs: ██§0███§r
                title @a[tag=is_riding_dragon,scores={c_fireballs=3}] actionbar §gFireballs: ███§0██§r
                title @a[tag=is_riding_dragon,scores={c_fireballs=4}] actionbar §gFireballs: ████§0█§r
                title @a[tag=is_riding_dragon,scores={c_fireballs=5}] actionbar §gFireballs: █████§0§r

                title @a[tag=is_riding_cannon,scores={c_cannonballs=!1..}] actionbar §gCannon balls: §0█████§r
                title @a[tag=is_riding_cannon,scores={c_cannonballs=1}] actionbar §gCannon balls: █§0████§r
                title @a[tag=is_riding_cannon,scores={c_cannonballs=2}] actionbar §gCannon balls: ██§0███§r
                title @a[tag=is_riding_cannon,scores={c_cannonballs=3}] actionbar §gCannon balls: ███§0██§r
                title @a[tag=is_riding_cannon,scores={c_cannonballs=4}] actionbar §gCannon balls: ████§0█§r
                title @a[tag=is_riding_cannon,scores={c_cannonballs=5}] actionbar §gCannon balls: █████§0§r

                scoreboard players set @a[scores={c_fireballs=6..}] c_fireballs 5
                scoreboard players set @a[scores={c_cannonballs=6..}] c_cannonballs 5

            execute @a[tag=!is_riding] ~ ~ ~ tag @s remove is_riding_dragon
            execute @a[tag=!is_riding] ~ ~ ~ tag @s remove is_riding_cannon
            execute @a[tag=!is_riding] ~ ~ ~ scoreboard players reset @s t_reload
            execute @a[tag=!is_riding] ~ ~ ~ scoreboard players reset @s c_fireballs
            execute @a[tag=!is_riding] ~ ~ ~ scoreboard players reset @s c_cannonballs
# Developer
    # Compiler debug