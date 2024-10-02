function ExoWow:ConfigureBindings()
  if not ExoWow.inCombat then
    ClearOverrideBindings(ExoWow.frame);
  end

  ExoWow:ConfigureGlobalBindings();

  if ExoWow.role == 'HEALER' then
    if ExoWow.isArena then
      ---@diagnostic disable-next-line: undefined-global
      local unit = CellRaidFrameHeader1UnitButton2 and CellRaidFrameHeader1UnitButton2.unit
      if unit == nil then
      elseif UnitIsUnit(unit, "party1") then
        ExoWow:SetGlobalBindingMacro("MOUSEWHEELUP", "/tar [@party2]");
        ExoWow:SetGlobalBindingMacro("MOUSEWHEELDOWN", "/tar [@party1]");
        -- ExoWow:SetOverrideBinding("MOUSEWHEELUP", "TARGETPARTYMEMBER2");
        -- ExoWow:SetOverrideBinding("MOUSEWHEELDOWN", "TARGETPARTYMEMBER1");
      else
        ExoWow:SetGlobalBindingMacro("MOUSEWHEELUP", "/tar [@party1]");
        ExoWow:SetGlobalBindingMacro("MOUSEWHEELDOWN", "/tar [@party2]");
        -- ExoWow:SetOverrideBinding("MOUSEWHEELUP", "TARGETPARTYMEMBER1");
        -- ExoWow:SetOverrideBinding("MOUSEWHEELDOWN", "TARGETPARTYMEMBER2");
      end
    else
      ExoWow:SetOverrideBinding("MOUSEWHEELUP", "TARGETNEARESTFRIENDPLAYER");
      ExoWow:SetOverrideBinding("MOUSEWHEELDOWN", "TARGETPREVIOUSFRIENDPLAYER");
    end
  else
  end

  if ExoWow.isPVP then
    ExoWow:SetOverrideBinding("TAB", "TARGETNEARESTENEMYPLAYER");
    ExoWow:SetOverrideBinding("SHIFT-TAB", "TARGETPREVIOUSENEMYPLAYER");
  else
    ExoWow:SetOverrideBinding("TAB", "TARGETNEARESTENEMY");
    ExoWow:SetOverrideBinding("SHIFT-TAB", "TARGETPREVIOUSENEMY");
  end

  ExoWow[format('Configure%sBindings', gsub(ExoWow.class, ' ', ''))]();
end
