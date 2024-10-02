local options = {
  name = "ExoWow",
  handler = ExoWow,
  type = 'group',
  args = {
    msg = {
      type = 'input',
      name = 'My Message',
      desc = 'The message for my addon',
      set = 'SetMyMessage',
      get = 'GetMyMessage',
    },
  },
}

function ExoWow:SetMyMessage(info, value)
  ExoWow.db.global.myMessage = value
end

function ExoWow:GetMyMessage(info)
  return ExoWow.db.global.myMessage
end

LibStub("AceConfig-3.0"):RegisterOptionsTable("ExoWow", options)
