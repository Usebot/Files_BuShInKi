
local function BuShInKie(msg)
local text = msg.content_.text_
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local BuShInKiChengName = database:get(bot_id.."BuShInKi:Cheng:Name"..data.id_)
if not data.first_name_ then 
if BuShInKiChengName then 
send(msg.chat_id_, msg.id_, "        ["..BuShInKiChengName..']')
database:del(bot_id.."BuShInKi:Cheng:Name"..data.id_) 
end
end
if data.first_name_ then 
if BuShInKiChengName ~= data.first_name_ then 
local Text = {
  '     ',
  "    ",
  "     ",
  '    ', 
  '     ',
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."BuShInKi:Cheng:Name"..data.id_, data.first_name_) 
end
end
end
end,nil)   
end

end
return {BuShInKi = BuShInKie}
