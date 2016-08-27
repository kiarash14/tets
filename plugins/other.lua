local function do_keyboard_other()
    local keyboard = {}
    keyboard.inline_keyboard = {
		{
    					{text = '🔙 برگشت به منوی اصلی', callback_data = '!back'},
    					},
    					{
    		    		{text = '📁 اطلاعات', callback_data = '!robot'},
	        }
    }
    return keyboard
end

local action = function(msg, blocks, ln)
    if blocks[1] == 'start22' or blocks[1] == 'help22' then
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
        if msg.chat.type == 'private' then
            local message = [[🎲 دیگر گزینه ها:]]
            local keyboard = do_keyboard_other()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end

    if msg.cb then
        local query = blocks[1]
        local msg_id = msg.message_id
        local text
if query == 'other' then
            local text = [[🎲 دیگر گزینه ها:]]
            local keyboard = do_keyboard_other()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
    end

end

return {
	action = action,
	triggers = {
	    '^/(start22)@BeatBotTeamBot$',
	    '^/(start22)$',
	    '^/(help22)$',
	    '^###cb:!(other)',

    }
}
