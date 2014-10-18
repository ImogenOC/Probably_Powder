-- Built by Imogen with Love
ProbablyEngine.rotation.register_custom(261, "Powder", {
 -- Keybinds, General
{ "Vanish", "modifier.shift" },
{ "Pause", "modifier.control" },
{ "Smoke Bomb", "modifier.alt", "ground" },

-- Target Manipulation
{ "Pause", "target.immune.all" },
{ "Pause", "target.state.incapacitate" },
{ "Pause", "target.state.disorient" },

-- Melee While Running Prevention
{ "Pause", "player.buff(Stealth)" },
{ "Pause", "player.buff(Vanish)" },


-- BOS Handle

-- { "Burst of Speed", {
--   "player.buff(Burst of Speed).duration < 1",
--   "!player.target",
--   "player.energy >= 50",
-- }},

-- { "Burst of Speed",{ 
--   "!player.buff(Burst of Speed)",
--   "player.buff(Burst of Speed).duration < 1",
--   "player.energy >= 50",
--   "!player.target",
-- }},

-- { "Burst of Speed", { 
--   "player.state.snare",
--   "player.energy >= 50",
-- }},
 
-- { "Burst of Speed", {
--   "player.buff(Vanish)",
--   "!player.buff(Burst of Speed)",
-- }},
  
-- Basic Buffs
-- SnD, and not the sexy kind
{ "5171", {
  "player.combopoints >= 4",
  "!player.buff(5171)",
}},

{ "5171", {
  "player.combopoints >= 4",
  "player.buff(5171).duration <= 5",
}},

{ "Rupture", {
  "player.combopoints >= 5",
  "!target.debuff(Rupture)",
}},

{ "Rupture", {
  "player.combopoints >= 5",
  "target.debuff(Rupture).duration <= 3",
}},
  
-- Mouseover w/ Mod
{ "Blind", "modifier.control", "mouseover" },


-- Survival
{ "Evasion", "player.health <= 70" },
{ "Recuperate", { 
  "player.health <= 50", 
  "player.combopoints >= 4", 
  "!player.buff(Recuperate)",
}},
{ "Recuperate", { 
  "player.health <= 80", 
  "player.combopoints <= 2", 
  "!player.buff(Recuperate)",
}},

{ "Feint", { 
  "player.spell.(Elusiveness).exists", 
  "toggle.feint",
}},
  
-- Tricks of the Trade
{ "Tricks of the Trade", "focus.exists", "focus" },
  
-- Combat Readiness Handler
{ "Combat Readiness", { 
  "player.health <= 80", 
  "target.class(Warrior)",
  "target.range <= 10",
}},

{ "Combat Readiness", { 
  "player.health <= 80", 
  "target.class(Paladin)", 
  "target.range <= 10",
}},

{ "Combat Readiness", { 
  "player.health <= 80", 
  "target.class(DeathKnight)", 
  "target.range <= 10",
}},

{ "Combat Readiness", { 
  "player.health <= 80", 
  "target.class(Rogue)", 
  "target.range <= 10",
}},

{ "Combat Readiness", { 
  "player.health <= 80", 
  "target.class(Monk)", 
  "target.range <= 10",
}},

{ "Combat Readiness", { 
  "player.health <= 80", 
  "target.class(Druid)", 
  "target.range <= 10",
}},
  
-- Subterfuge Handler
{ "Cheap Shot", { 
  "player.buff(Subterfuge)", 
  "!target.debuff(Cheap Shot",
}},

{ "Ambush", { 
  "player.buff(Subterfuge)",
  "player.combopoints <= 3",
}},
  
-- Get Fucked Button
{ "Shadow Dance", { 
  "toggle.burst", 
  "target.range <= 10",
}},

{ "Shadow Blades", { 
  "toggle.burst", 
  "target.range <= 10", 
}},

{ "Eviscerate", { 
  "player.buff(Shadow Dance", 
  "toggle.burst", 
  "player.combopoints = 5", 
}},

{ "Ambush", { 
  "player.buff(Shadow Dance", 
  "toggle.burst",
}},
  
-- Rotation
-- Crimson Tempest IF we are in a suitable position to do so
{ "121411", {
  "player.buff(5171)",
  "player.buff(5171).duration >= 17",
  "target.debuff(Rupture)",
  "target.debuff(Rupture) >= 8",
  "player.combopoints >= 3",
  "target.range <= 10",
  "!target.debuff(Crimson Tempest)"
}},
{ "Eviscerate", "player.combopoints = 5" },
{ "Backstab", { "player.combopoints < 5", "player.combopoints <= 4" }},

-- Shuriken Handler
{ "Shuriken Toss", "target.range >= 10" },
  
-- Rotation END
},{
-- OOC START

-- Buffs 

-- WTF leeching poison? :/
{ "108211", "!player.buff(108211)"},

{ "Deadly Poison", { 
  "player.buff(Deadly Poison).duration <= 900",
  "!player.moving",
}},

{ "108211", {
  "player.spell(108211)",
  "player.buff(108211).duration <= 900",
}},

-- { "Crippling Poison", {
--   "!player.spell(108211)",
--   "player.buff(Crippling Poison).duration <= 900",
-- }},

{ "Deadly Poison", { 
  "!player.buff(Deadly Poison)",
  "!player.moving",
}},
-- Leeching
{ "108211", {
  "player.spell(108211)",
  "!player.buff(108211)",
}},

-- { "Crippling Poison", {
--   "!player.spell(108211)",
--   "!player.buff(Crippling Poison",
-- }},

-- BOS
-- { "Burst of Speed", {
--   "player.buff(Burst of Speed).duration <= 2",
--   "player.energy >= 50",
--   "player.moving",
-- }},

-- { "Burst of Speed", {
--   "!player.buff(Burst of Speed)",
--   "player.moving",
--   "modifier.last",
-- }},
  
-- Stealth Handling
{ "Stealth", "!player.buff(Stealth)" },
{ "Shadow Walk", "target.range <= 10" },
  
-- Debuff Handling
{ "Cloak of Shadows", { "player.state.dot", "toggle.buff" }},
  
-- Health Handling
{ "Recuperate", { "player.health <= 95", "player.combopoints <= 3", "toggle.buff" }},
  
-- Mouseover (Beta)
{ "Disarm Trap", "mouseover" },
  
-- Keybinds
{ "Distract", "modifier.control", "ground" },
 
}, 
function ()
-- ProbablyEngine.toggle.create('hem', 'Interface\\Icons\\spell_shadow_lifedrain', 'Toggle Hemorrhage', 'Enables use of Hemmorhage if we cannot do anything else.', '')
-- ProbablyEngine.toggle.create('as', 'Interface\\Icons\\ability_rogue_kidneyshot', 'Togle Additional Silences', 'Enables use of Alternate Silences.', '')
-- ProbablyEngine.toggle.create('sap', 'Interface\\Icons\\ability_rogue_blackjack', 'Toggle Sap', 'Enables use of Sap while stealthed.', '')
-- ProbablyEngine.toggle.create('buff', 'Interface\\Icons\\ability_rogue_slicedice', 'Toggle Custom Buffing', 'Enables use of various buffs.', '')
-- ProbablyEngine.toggle.create('rup', 'Interface\\Icons\\ability_rogue_rupture', 'Toggle Rupture', 'Enables use of Rupture', '')
ProbablyEngine.toggle.create('burst', 'Interface\\Icons\\ability_warrior_decisivestrike', 'Burst Button', 'Get Fucked')
end)