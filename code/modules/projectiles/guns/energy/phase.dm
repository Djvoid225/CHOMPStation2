// Phase weapons go here
//CHOMP Edit: Each phase gun now has the same safety lock as frontier phasers. Every pathname now has "locked" and "unlocked", basically. This code comes from /code/modules/projectiles/guns/energy/laser_vr.dm.

/obj/item/weapon/gun/energy/locked/phasegun
	name = "phase carbine"
	desc = "The RayZar EW26 Artemis is a downsized energy weapon, specifically designed for use against wildlife. This one has a safety interlock that prevents firing while in proximity to the facility."
	description_fluff = "RayZar is Ward-Takahashi’s main consumer weapons brand, known for producing and licensing a wide variety of specialist energy weapons of various types and quality primarily for the civilian market."
	icon_state = "phasecarbine"
	item_state = "phasecarbine"
	wielded_item_state = "phasecarbine-wielded"
	slot_flags = SLOT_BACK|SLOT_BELT
	charge_cost = 240
	projectile_type = /obj/item/projectile/energy/phase
	one_handed_penalty = 15
	recoil_mode = 0 //CHOMP Addition: Removes recoil for micros.

/obj/item/weapon/gun/energy/locked/phasegun/unlocked
	desc = "The RayZar EW26 Artemis is a downsized energy weapon, specifically designed for use against wildlife."
	req_access = newlist() //for toggling safety
	locked = 0
	lockable = 0

/obj/item/weapon/gun/energy/locked/phasegun/unlocked/mounted
	self_recharge = 1
	use_external_power = 1
	one_handed_penalty = 0

/obj/item/weapon/gun/energy/locked/phasegun/unlocked/mounted/cyborg
	charge_cost = 400
	recharge_time = 7

/obj/item/weapon/gun/energy/locked/phasegun/pistol
	name = "phase pistol"
	desc = "The RayZar EW15 Apollo is an energy handgun, specifically designed for self-defense against aggressive wildlife. This one has a safety interlock that prevents firing while in proximity to the facility."
	icon_state = "phase"
	item_state = "taser"	//I don't have an in-hand sprite, taser will be fine
	w_class = ITEMSIZE_NORMAL
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	charge_cost = 300
	projectile_type = /obj/item/projectile/energy/phase/light
	one_handed_penalty = 0
	move_delay = 0 // CHOMPEdit: Pistols have move_delay of 0

/obj/item/weapon/gun/energy/locked/phasegun/pistol/unlocked
	desc = "The RayZar EW15 Apollo is an energy handgun, specifically designed for self-defense against aggressive wildlife."
	req_access = newlist() //for toggling safety
	locked = 0
	lockable = 0

/obj/item/weapon/gun/energy/locked/phasegun/pistol/unlocked/mounted
	name = "mounted phase pistol"
	self_recharge = 1
	use_external_power = 1

/obj/item/weapon/gun/energy/locked/phasegun/pistol/unlocked/mounted/cyborg
	charge_cost = 400
	recharge_time = 7


/obj/item/weapon/gun/energy/locked/phasegun/rifle
	name = "phase rifle"
	desc = "The RayZar EW31 Orion is a specialist energy weapon, intended for use against hostile wildlife. This one has a safety interlock that prevents firing while in proximity to the facility."
	icon_state = "phaserifle"
	item_state = "phaserifle"
	wielded_item_state = "phaserifle-wielded"
	w_class = ITEMSIZE_LARGE
	slot_flags = SLOT_BACK
	charge_cost = 150
	projectile_type = /obj/item/projectile/energy/phase/heavy
	accuracy = 15
	one_handed_penalty = 30

/obj/item/weapon/gun/energy/locked/phasegun/rifle/unlocked
	desc = "The RayZar EW31 Orion is a specialist energy weapon, intended for use against hostile wildlife."
	req_access = newlist() //for toggling safety
	locked = 0
	lockable = 0

/obj/item/weapon/gun/energy/locked/phasegun/cannon
	name = "phase cannon"
	desc = "The RayZar EW50 Gaia is a massive energy weapon, purpose-built for clearing land. You feel dirty just looking at it. This one has a safety interlock that prevents firing while in proximity to the facility."
	icon_state = "phasecannon"
	item_state = "phasecannon"
	wielded_item_state = "phasecannon-wielded"	//TODO: New Sprites
	w_class = ITEMSIZE_HUGE		// This thing is big.
	slot_flags = SLOT_BACK
	charge_cost = 100
	projectile_type = /obj/item/projectile/energy/phase/heavy/cannon
	accuracy = 15
	one_handed_penalty = 65

/obj/item/weapon/gun/energy/locked/phasegun/cannon/unlocked
	desc = "The RayZar EW50 Gaia is a massive energy weapon, purpose-built for clearing land. You feel dirty just looking at it."
	req_access = newlist() //for toggling safety
	locked = 0
	lockable = 0
