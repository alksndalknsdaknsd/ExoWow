local function overwriteArenaFocusMacro(focusUnit, macroId)
  local name, _, body = GetMacroInfo(macroId);

  -- Do not change macro named C*
  if name:find('A', 1, true) then return end

  if body:find('@arena%d') or body:find('@focus') then
    local _body = body:gsub('@arena%d', focusUnit):gsub('@focus', focusUnit);
    EditMacro(macroId, name, nil, _body);
    return true;
  end

  return false;
end

function ExoWow:ConfigureArenaFocusMacros()
  local nArenaSpecs = GetNumArenaOpponentSpecs()

  local arenaToFocus = 0
  for i = 1, nArenaSpecs do
    local arenaOpponentSpecId = GetArenaOpponentSpec(i)
    local role = select(5, GetSpecializationInfoByID(arenaOpponentSpecId))
    if role == 'HEALER' then
      arenaToFocus = i
      break
    end
  end

  if arenaToFocus == 0 then
    ExoWow:Print('NO HEALER FOUND')
    return nil
  end

  local focusUnit = '@arena' .. tostring(arenaToFocus)
  local nGlobalMacros, nCharMacros = GetNumMacros();

  -- ExoWow:Print('Focus to ', focusUnit)

  -- Edit global macros
  for i = 1, nGlobalMacros do
    overwriteArenaFocusMacro(focusUnit, i)
  end

  -- Edit character macros
  for i = 1, nCharMacros do
    overwriteArenaFocusMacro(focusUnit, 120 + i)
  end

  return arenaToFocus
end

function ExoWow:RestoreMacros()
  local nGlobalMacros, nCharMacros = GetNumMacros();
  for i = 1, nGlobalMacros do
    overwriteArenaFocusMacro("@focus", i);
  end
  for i = 1, nCharMacros do
    overwriteArenaFocusMacro("@focus", 120 + i)
  end
end

function ExoWow:ConfigureMacros(eventName)
  if eventName == 'ARENA_PREP_OPPONENT_SPECIALIZATIONS' then
    ExoWow.arenaToFocus = ExoWow:ConfigureArenaFocusMacros()
  else
    ExoWow:RestoreMacros()
  end
end
