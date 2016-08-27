local function do_keybaord_credits2()
	local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '🎫 کانال ما', url = 'https://telegram.me/'..config.channel:gsub('@', '')},
    		{text = '📣 رای دادن', url = 'https://telegram.me/storebot?start='..bot.username},
		},
		{
			{text = '👥 گروه ها', callback_data = 'private:groups'},
		}
	}
	return keyboard
end
local action = function(msg, blocks, ln)
    if blocks[1] == 'information' or blocks[1] == 'information' then
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
        if msg.chat.type == 'private' then
            local message = [[🎲 اطلاعات مفید:]]
            local keyboard = do_keyboard_credits2()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
    if msg.cb then
        local query = blocks[1]
        local msg_id = msg.message_id
        local text
if query == 'robot' then
		local text = [[🎲 اطلاعات مفید:]]
            local keyboard = do_keyboard_credits2()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
    end 
end

return {
	action = action,
	triggers = { 
	    '^/(information)$',
	    '^###cb:!(robot)',
    }
}
