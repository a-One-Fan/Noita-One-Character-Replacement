table.insert(actions,
  {
    id                 = "ONE_CHAKRAM",
    name               = "Chakram",
    description        = "Throw out your chakram, which boomerangs to you!",
    sprite             = "data/ui_gfx/gun_actions/one_chakram.png",
    type               = ACTION_TYPE_PROJECTILE,
    spawn_level        = "0,1,2,3,4,10",
    spawn_probability  = "0.7,0.8,0.9,0.5,0.3,0.8",
    price              = 200,
    mana               = 5,
    max_uses           = 30,
    -- custom_xml_file = "data/entities/misc/custom_cards/torch_electric.xml",
    action = function()
		add_projectile("data/entities/projectiles/deck/one_chakram.xml")
		-- damage = 0.3
		c.fire_rate_wait = c.fire_rate_wait + 20
		c.spread_degrees = c.spread_degrees + 3.4
		shot_effects.recoil_knockback = shot_effects.recoil_knockback + 20.0

		-- Examples for triggers:
		--add_projectile_trigger_hit_world("data/entities/projectiles/deck/light_bullet.xml", 1)
		--add_projectile_trigger_timer("data/entities/projectiles/deck/light_bullet.xml", 10, 1)
		--add_projectile_trigger_death("data/entities/projectiles/deck/mine.xml", 1)
    end,
  }
)