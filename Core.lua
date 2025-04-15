ExoWow = LibStub('AceAddon-3.0'):NewAddon('ExoWow', 'AceConsole-3.0', 'AceEvent-3.0');

ExoWow.frame = CreateFrame('Frame');
ExoWow.frame:Hide();

local defaults = {}

function ExoWow:OnInitialize()
  ExoWow.db = LibStub('AceDB-3.0'):New('ExoWowDB', defaults, true);
  ExoWow.optionsFrame = LibStub('AceConfigDialog-3.0'):AddToBlizOptions('ExoWow', 'ExoWow');
end

local events = {
  'PLAYER_ENTERING_WORLD',
  'ZONE_CHANGED_NEW_AREA',
  'ACTIVE_PLAYER_SPECIALIZATION_CHANGED',
  'ARENA_PREP_OPPONENT_SPECIALIZATIONS',
  'PVP_MATCH_STATE_CHANGED',
  'FIRST_FRAME_RENDERED',
}

function ExoWow:OnEnable()
  for _, event in ipairs(events) do
    self:RegisterEvent(event, 'HandleEvent');
  end
end

function ExoWow:OnDisable()
  for _, event in ipairs(events) do
    self:UnregisterEvent(event);
  end
end

function ExoWow:HandleEvent(eventName, ...)
  -- ExoWow:Print(eventName, ...)

  ExoWow.inCombat = InCombatLockdown()
  ExoWow.class = UnitClass('player')
  ExoWow.name = UnitName('player')
  local specIndex = GetSpecialization();
  ExoWow.spec = select(2, GetSpecializationInfo(specIndex));
  ExoWow.role = GetSpecializationRole(specIndex);
  ExoWow.isArena = C_PvP.IsMatchConsideredArena();
  ExoWow.isBattleground = C_PvP.IsBattleground();
  ExoWow.isPVP = ExoWow.isArena or ExoWow.isBattleground;

  if PlayerFrame == nil then return end

  -- Configure keybinds
  ExoWow:ConfigureBindings();

  -- Configure Macros
  ExoWow:ConfigureMacros(eventName);

  -- Configure UI
  ExoWow:ConfigureUi();
end

ExoWow:RegisterChatCommand('exo', 'ChatCommandHandler')

local chatCommands = {
  skirmish = 'QueueSkirmish',
  bg = 'QueueRandomBg',
  ['bg.epic'] = 'QueueEpicBg',
  bindings = 'ConfigureBindings',
  macros = 'ConfigureMacros',
  ui = 'ConfigureUi',
  global = 'ConfigureGlobalBindings',
}

function ExoWow:ChatCommandHandler(input)
  local arg = self:GetArgs(input, 1, 1);
  self[chatCommands[arg]]();
end
