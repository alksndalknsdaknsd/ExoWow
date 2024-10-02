function ExoWow:ConfigureUi()
  XPerl_TargetTarget.conf.buffs.bigStealable = 1;
  if DebuffFrame then DebuffFrame:Hide(); end
  if ExoWow.isArena then
    C_CVar.SetCVar("showBattlefieldMinimap", "0");
    if BattlefieldMapFrame then BattlefieldMapFrame:Hide(); end
    if CompactArenaFrame then CompactArenaFrame:Hide(); end
    if Minimap then Minimap:Hide(); end
    if QueueStatusButton then QueueStatusButton:Hide(); end
  else
    C_CVar.SetCVar("showBattlefieldMinimap", "1");
    if Minimap then Minimap:Show(); end
    if not BattlefieldMapFrame then RunBinding("TOGGLEBATTLEFIELDMINIMAP"); end
    if BattlefieldMapFrame then BattlefieldMapFrame:SetScale(1.5); end
  end
end
