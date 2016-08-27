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
if query == 'robot' then
		local text = '🕔 Bot Creator And Version: `'..config.version..'`\n🔗 '..lang[msg.ln].credits, keyboard
            local keyboard = do_keyboard_credits2()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
    end

end

return {
	action = action,
	triggers = = { 
	    '^###cb:!(robot)',

    }
}
