local function do_keybaord_credits2()
	local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '🎫 کانال ما', url = 'https://telegram.me/spamproofchannel},
    		{text = '📣 رای دادن', url = 'https://telegram.me/storebot?start=spamproofbot'},
		},
		{
			{text = '👥 گروه ها', callback_data = 'private:groups'},
		}
	}
	return keyboard
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
	    '^###cb:!(robot)',
    }
}
