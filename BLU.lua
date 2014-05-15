-------------------------------------------------------------------------------------------------------------------
-- Initialization function that defines sets and variables to be used.
-------------------------------------------------------------------------------------------------------------------

-- IMPORTANT: Make sure to also get the Mote-Include.lua file to go with this.

-- Initialization function for this job file.
function get_sets()
	-- Load and initialize the include file.
	include('Mote-Include.lua')
end


-- Setup vars that are user-independent.
function job_setup()

	-- Table of spell mappings for blue magic spells.
	blue_magic_maps = S{
		-- Physical spells with no stat mods
		['Asuran Claws']='Physical',['Bludgeon']='Physical',['Body Slam']='Physical',['Feather Storm']='Physical',
		['Mandibular Bite']='Physical',['Queasyshroom']='Physical',['Power Attack']='Physical',['Ram Charge']='Physical',
		['Screwdriver']='Physical',['Sickle Slash']='Physical',['Smite of Rage']='Physical',['Spinal Cleave']='Physical',
		['Spiral Spin']='Physical',['Terror Touch']='Physical',
		
		-- Physical spells with Str stat mod
		['Battle Dance']='PhysicalStr',['Bloodrake']='PhysicalStr',['Death Scissors']='PhysicalStr',
		['Dimensional Death']='PhysicalStr',['Empty Thrash']='PhysicalStr',['Heavy Strike']='PhysicalStr',
		['Quadrastrike']='PhysicalStr',['Uppercut']='PhysicalStr',['Tourbillion']='PhysicalStr',['Vertical Cleave']='PhysicalStr',
		['Whirl of Rage']='WhirlOfRage',
		
		-- Physical spells with Dex stat mod
		['Amorphic Spikes']='PhysicalDex',['Barbed Crescent']='PhysicalDex',['Claw Cyclone']='PhysicalDex',
		['Disseverment']='PhysicalDex',['Foot Kick']='PhysicalDex',['Frenetic Rip']='PhysicalDex',
		['Goblin Rush']='PhysicalDex',['Hysteric Barrage']='PhysicalDex',['Paralyzing Triad']='PhysicalDex',
		['Seedspray']='PhysicalDex',['Vanity Dive']='PhysicalDex',
		
		-- Physical spells with Vit stat mod
		['Cannonball']='PhysicalVit',['Delta Thrust']='PhysicalVit',['Glutinous Dart']='PhysicalVit',['Grand Slam']='PhysicalVit',
		['Quad. Continuum']='PhysicalVit',['Sprout Smack']='PhysicalVit',
		
		-- Physical spells with Agi stat mod
		['Benthic Typhoon']='PhysicalAgi',['Helldive']='PhysicalAgi',['Hydro Shot']='PhysicalAgi',['Jet Stream']='PhysicalAgi',
		['Pinecone Bomb']='PhysicalAgi',['Wild Oats']='PhysicalAgi',
		
		-- Magical spells
		['Acrid Stream']='Magical',['Charged Whisker']='Magical',['Dark Orb']='Magical',['Droning Whirlwind']='Magical',
		['Embalming Earth']='Magical',['Evryone. Grudge']='Magical',['Firespit']='Magical',['Foul Waters']='Magical',
		['Gates of Hades']='Magical',['Leafstorm']='Magical',['Magic Hammer']='Magical',['Regurgitation']='Magical',
		['Rending Deluge']='Magical',['Tem. Upheaval']='Magical',['Thermal Pulse']='Magical',['Water Bomb']='Magical',
		
		-- Magical spells (generally debuffs) that need to focus on magic accuracy
		['1000 Needles']='MagicAccuracy',['Absolute Terror']='MagicAccuracy',['Actinic Burst']='MagicAccuracy',
		['Auroral Drape']='MagicAccuracy',['Awful Eye']='MagicAccuracy',['Blank Gaze']='MagicAccuracy',
		['Blistering Roar']='MagicAccuracy',['Blood Drain']='MagicAccuracy',['Blood Saber']='MagicAccuracy',
		['Chaotic Eye']='MagicAccuracy',['Cimicine Discharge']='MagicAccuracy',['Cold Wave']='MagicAccuracy',
		['Digest']='MagicAccuracy',['Corrosive Ooze']='MagicAccuracy',['Demoralizing Roar']='MagicAccuracy',
		['Dream Flower']='MagicAccuracy',['Enervation']='MagicAccuracy',['Feather Tickle']='MagicAccuracy',
		['Filamented Hold']='MagicAccuracy',['Frightful Roar']='MagicAccuracy',['Geist Wall']='MagicAccuracy',
		['Hecatomb Wave']='MagicAccuracy',['Infrasonics']='MagicAccuracy',['Jettatura']='MagicAccuracy',
		['Light of Penance']='MagicAccuracy',['Lowing']='MagicAccuracy',['Mind Blast']='MagicAccuracy',
		['Mortal Ray']='MagicAccuracy',['MP Drainkiss']='MagicAccuracy',['Osmosis']='MagicAccuracy',
		['Reaving Wind']='MagicAccuracy',['Sandspin']='MagicAccuracy',['Sandspray']='MagicAccuracy',
		['Sheep Song']='MagicAccuracy',['Soporific']='MagicAccuracy',['Sound Blast']='MagicAccuracy',
		['Stinking Gas']='MagicAccuracy',['Sub-zero Smash']='MagicAccuracy',['Triumphant Roar']='MagicAccuracy',
		['Venom Shell']='MagicAccuracy',['Voracious Trunk']='MagicAccuracy',['Yawn']='MagicAccuracy',
		
		-- Breath-based spells
		['Bad Breath']='Breath',['Flying Hip Press']='Breath',['Final Sting']='Breath',['Frost Breath']='Breath',
		['Heat Breath']='Breath',['Magnetite Cloud']='Breath',['Poison Breath']='Breath',['Radiant Breath']='Breath',
		['Self Destruct']='Breath',['Thunder Breath']='Breath',['Wind Breath']='Breath',

		-- Stun spells
		['Blitzstrahl']='Stun',['Frypan']='Stun',['Head Butt']='Stun',['Sudden Lunge']='Stun',['Tail slap']='Stun',
		['Temporal Shift']='Stun',['Thunderbolt']='Stun',['Whirl of Rage']='WhirlOfRage',
		
		-- Healing spells
		['Healing Breeze']='Healing',['Magic Fruit']='Healing',['Plenilune Embrace']='Healing',['Pollen']='Healing',
		['White Wind']='Healing',['Wild Carrot']='Healing',

		-- Other general buffs
		['Barrier Tusk']='Buff',['Carcharian Verve']='Buff',['Diamondhide']='Buff',['Metallic Body']='Buff',
		['Magic Barrier']='Buff',['Occultation']='Buff',['Orcish Counterstance']='Buff',
		["Nature's Meditation"]='Buff',['Plasma Charge']='Buff',['Pyric Bulwark']='Buff',['Reactor Cool']='Buff',

		-- To fix:
		-- Whirl of Rage is under Str mod and Stun spells
	}


	-- Spells that can be enhanced with Diffusion gear
        diffusion_spells = S{
                        'Amplification','Cocoon','Exuviation','Feather Barrier','Harden Shell','Memento Mori',
                        'Metallic Body','Plasma Charge','Reactor Cool','Refueling','Saline Coat','Warm-Up',
                        'Zephyr Mantle'}
 

        unbridled_blu_spells = S{
                        'Absolute Terror','Bilgestorm','Blistering Roar','Bloodrake','Carcharian Verve',
                        'Droning Whirlwind','Gates of Hades','Harden Shell','Pyric Bulwark','Thunderbolt',
                        'Tourbillion'}
end


-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
	-- Options: Override default values
	options.OffenseModes = {'Normal'}
	options.DefenseModes = {'Normal'}
	options.WeaponskillModes = {'Normal', 'Acc', 'Att', 'Mod'}
	options.CastingModes = {'Normal'}
	options.IdleModes = {'Normal'}
	options.RestingModes = {'Normal'}
	options.PhysicalDefenseModes = {'PDT'}
	options.MagicalDefenseModes = {'MDT'}

	state.Defense.PhysicalMode = 'PDT'

	select_default_macro_book()
end


-- Called when this job file is unloaded (eg: job change)
function file_unload()
	if binds_on_unload then
		binds_on_unload()
	end
end

function init_gear_sets()
	--------------------------------------
	-- Start defining the sets
	--------------------------------------
	
	-- Precast Sets
	
	-- Precast sets to enhance JAs
	sets.precast.JA['No Foot Rise'] = {body="Etoile Casaque +2"}
	

	-- Waltz set (chr and vit)
	sets.precast.Waltz = {}
		
	-- Don't need any special gear for Healing Waltz.
	sets.precast.Waltz['Healing Waltz'] = {}

	-- Fast cast sets for spells
	
	sets.precast.FC = {ear2="Loquacious Earring"}

	sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck="Magoraga Beads"})

       
	-- Weaponskill sets
	-- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = {}

	-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {})

	sets.precast.WS['Aeolian Edge'] = {ammo="Charis Feather",
		head="Thaumas Hat",neck="Stoicheion Medal",ear1="Friomisi Earring",ear2="Hecate's Earring",
		body="Manibozho Jerkin",hands="Buremte Gloves",ring1="Rajas Ring",ring2="Demon's Ring",
		back="Toro Cape",waist="Thunder Belt",legs="Iuitl Tights",feet="Iuitl Gaiters +1"}
	
	
	-- Midcast Sets
	sets.midcast.FastRecast = {}
		
	-- Specific spells
	sets.midcast.Utsusemi = {}

	
	-- Sets to return to when not performing an action.
	
	-- Resting sets
	sets.resting = {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",
		ring1="Sheltered Ring",ring2="Paguroidea Ring"}
	

	-- Idle sets
	sets.idle = {}

	sets.idle.Town = {main="Izhiikoh", sub="Atoyac",ammo="Charis Feather",
		head="Whirlpool Mask",neck="Charis Necklace",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
		body="Charis Casaque +2",hands="Iuitl Wristbands",ring1="Sheltered Ring",ring2="Paguroidea Ring",
		back="Atheling Mantle",waist="Patentia Sash",legs="Kaabnax Trousers",feet="Skadi's Jambeaux +1"}
	
	sets.idle.Weak = {ammo="Charis Feather",
		head="Whirlpool Mask",neck="Wiglen Gorget",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
		body="Manibozho Jerkin",hands="Buremte Gloves",ring1="Sheltered Ring",ring2="Paguroidea Ring",
		back="Iximulew Cape",waist="Flume Belt",legs="Kaabnax Trousers",feet="Skadi's Jambeaux +1"}
	
	-- Defense sets
	sets.defense.PDT = {}

	sets.defense.MDT = {}

	sets.Kiting = {feet="Skadi's Jambeaux +1"}

	-- Engaged sets

	-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
	-- sets if more refined versions aren't defined.
	-- If you create a set with both offense and defense modes, the offense mode should be first.
	-- EG: sets.engaged.Dagger.Accuracy.Evasion
	
	-- Normal melee group
	sets.engaged = {}
	sets.engaged.Acc = {}

end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks that are called to process player actions at specific points in time.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic target handling to be done.
function job_pretarget(spell, action, spellMap, eventArgs)

end

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)

end

-- Run after the default precast() is done.
-- eventArgs is the same one used in job_precast, in case information needs to be persisted.
function job_post_precast(spell, action, spellMap, eventArgs)

end


-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_midcast(spell, action, spellMap, eventArgs)

end

-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_post_midcast(spell, action, spellMap, eventArgs)

end

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)

end

-- Run after the default aftercast() is done.
-- eventArgs is the same one used in job_aftercast, in case information needs to be persisted.
function job_post_aftercast(spell, action, spellMap, eventArgs)

end

-------------------------------------------------------------------------------------------------------------------
-- Customization hooks for idle and melee sets, after they've been automatically constructed.
-------------------------------------------------------------------------------------------------------------------

-- Called before the Include starts constructing melee/idle/resting sets.
-- Can customize state or custom melee class values at this point.
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_handle_equipping_gear(status, eventArgs)

end

-- Custom spell mapping.
-- Return custom spellMap value that can override the default spell mapping.
-- Don't return anything to allow default spell mapping to be used.
function job_get_spell_map(spell, default_spell_map)
	if spell.skill == 'Blue Magic' then
		return blue_magic_maps[spell.english]
	end
end

-- Return a customized weaponskill mode to use for weaponskill sets.
-- Don't return anything if you're not overriding the default value.
function get_custom_wsmode(spell, action, spellMap)

end

-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
	return idleSet
end

-- Modify the default melee set after it was constructed.
function customize_melee_set(meleeSet)
	return meleeSet
end

-------------------------------------------------------------------------------------------------------------------
-- General hooks for other events.
-------------------------------------------------------------------------------------------------------------------

-- Called when the player's status changes.
function job_status_change(newStatus, oldStatus, eventArgs)

end

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)

end


-------------------------------------------------------------------------------------------------------------------
-- User code that supplements self-commands.
-------------------------------------------------------------------------------------------------------------------

-- Called for custom player commands.
function job_self_command(cmdParams, eventArgs)

end

-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)

end

-- Job-specific toggles.
function job_toggle(field)

end

-- Request job-specific mode lists.
-- Return the list, and the current value for the requested field.
function job_get_mode_list(field)

end

-- Set job-specific mode values.
-- Return true if we recognize and set the requested field.
function job_set_mode(field, val)

end

-- Handle auto-targetting based on local setup.
function job_auto_change_target(spell, action, spellMap, eventArgs)

end

-- Handle notifications of user state values being changed.
function job_state_change(stateField, newValue)

end

-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)

end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'WAR' then
		set_macro_page(3, 20)
	elseif player.sub_job == 'NIN' then
		set_macro_page(1, 20)
	elseif player.sub_job == 'SAM' then
		set_macro_page(2, 20)
	else
		set_macro_page(5, 20)
	end
end

