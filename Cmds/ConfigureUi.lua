function ExoWow:ConfigureUi()
  if XPerl_TargetTarget then XPerl_TargetTarget.conf.buffs.bigStealable = 1; end
  if DebuffFrame then DebuffFrame:Hide(); end
  if AddonCompartmentFrame then AddonCompartmentFrame:Hide(); end
  if MainStatusTrackingBarContainer then MainStatusTrackingBarContainer:Hide(); end

  for i = 1, 100, 1 do
    local frame = _G["ChatFrame" .. i];
    if frame then
      local fontName, _, fontFlags = frame:GetFont();
      frame:SetFont(fontName, 9, fontFlags);
    end
  end

  if TotemFrame then TotemFrame:Hide(); end
  if ExoWow.isArena then
    ExoWow:SetOverrideBindingClick("Q", "BT4Button60");
    if QueueStatusButton then QueueStatusButton:Show(); end
    C_CVar.SetCVar("showBattlefieldMinimap", "0");
    if BattlefieldMapFrame then BattlefieldMapFrame:Hide(); end
    if CompactArenaFrame then CompactArenaFrame:Hide(); end
    if Minimap then Minimap:Hide(); end
  else
    C_CVar.SetCVar("showBattlefieldMinimap", "1");
    if Minimap then Minimap:Show(); end
    if not BattlefieldMapFrame then RunBinding("TOGGLEBATTLEFIELDMINIMAP"); end
    if BattlefieldMapFrame then BattlefieldMapFrame:SetScale(1.5); end
  end
end
