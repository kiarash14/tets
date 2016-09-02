local function do_keyboard_config(chat_id)
    local keyboard = {
        inline_keyboard = {
            {{text = '🛠 Settings', callback_data = 'config:menu:'..chat_id}},
            {{text = '⚡ AntiFlood', callback_data = 'config:antiflood:'..chat_id}},
            {{text = '🌈 Media', callback_data = 'config:media:'..chat_id}},
            {{text = '📃 Others', callback_data = '!home2'}},            
        }
    }
    
    return keyboard
end
    

local function action(msg, blocks)
    if msg.chat.type == 'private' and not msg.cb then return end
    local chat_id = msg.target_id or msg.chat.id
    local keyboard = do_keyboard_config(chat_id)
    if msg.cb then
        chat_id = msg.target_id
        api.editMessageText(msg.chat.id, msg.message_id, '_ select one of keyboards_' ,keyboard, true)
    else
        if not roles.is_admin_cached(msg) then return end
        local res = api.sendKeyboard(msg.from.id, '_navigate keyboard to change settings_', keyboard, true)
        if not misc.is_silentmode_on(msg.chat.id) then --send the responde in the group only if the silent mode is off
            if res then
                api.sendMessage(msg.chat.id, '\n'..config.info..'👤I Send you all group settings', keyboard, true)
            else
                misc.sendStartMe(msg, msg.ln)
            end
        end
    end
end

return {
    action = action,
    triggers = {
        config.cmd..'group$',
        '^###cb:config:back:'
    }
}
