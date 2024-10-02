function ExoWow:QueueSkirmish()
  if ExoWow.isArena then
    if CanSurrenderArena() then
      SurrenderArena();
    else
      LeaveBattlefield();
    end
  else
    JoinSkirmish(4);
  end
end

function ExoWow:ShowPvpFrame(fn)
  if not PVEFrame or not PVEFrame:IsVisible() then
    LFDMicroButton:Click();
    PVEFrameTab2:Click();
    PVPQueueFrameCategoryButton1:Click();
  end
  if fn then
    fn();
    PVEFrameCloseButton:Click();
  end
end

function ExoWow:QueueRandomBg()
  ExoWow:ShowPvpFrame(function()
    HonorFrame.BonusFrame.RandomBGButton:Click();
    HonorFrameQueueButton:Click();
  end);
end

function ExoWow:QueueEpicBg()
  ExoWow:ShowPvpFrame(function()
    HonorFrame.BonusFrame.RandomEpicBGButton:Click();
    HonorFrameQueueButton:Click();
  end);
end
