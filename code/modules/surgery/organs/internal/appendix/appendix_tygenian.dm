
/obj/item/organ/internal/appendix/tygen
	name = "Tygenian Appendix"
	desc = "This colorful organ gives the Tygenian - or anyone who has it - the power of secreting colorful paint from their extremities. "
	icon_state = "appendix-tygenian"
	var/datum/action/cooldown/finger_paint
	actions_types = list(/datum/action/cooldown/finger_paint)


///Lets Tygenians paint with their fingers
/datum/action/cooldown/finger_paint
	name = "Finger Paint"
	desc = "Click to toggle between regular hands and painting with your hands."
	button_icon = "icons/obj/art/crayons.dmi"
	button_icon_state = "crayonred"
	check_flags = AB_CHECK_HANDS_BLOCKED | AB_CHECK_LYING | AB_CHECK_CONSCIOUS | AB_CHECK_INCAPACITATED

//action for getting the spray
/datum/action/cooldown/finger_paint/Trigger(trigger_flags, atom/target)
	if(!owner.get_active_held_item())
		owner.put_in_hands(new /obj/item/toy/crayon/spraycan/tygenian)
