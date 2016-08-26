local function do_keyboard_private2()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '📃 مارکداون اشتباه', url = 'https://telegram.me/SpamProofChannel/49'},
	    },
	    {
	    	{text = '👤 ادمین کردن ربات', url = 'https://telegram.me/SpamProofChannel/2'},
	    },
	    {
	    	{text = '👥 چرا ربات لینک ها را پاک نمی کند؟', url = 'https://telegram.me/SpamProofChannel/52'},
	    },
	    {
	    	{text = '📃 درباره ربات', url = 'https://telegram.me/SpamProofChannel/53'},
	    },
	    {
	    	{text = '⁉️ دریافت تنظیمات گروه', url = 'https://telegram.me/SpamProofChannel/54'},
	    },
	    {
	    	{text = '➖ برگشت', callback_data = '!back'}
	    	}
       }
    return keyboard
end

local function do_keyboard_startme()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '🎫 رفتن به پی وی ربات🙃', url = 'https://telegram.me/'..bot.username}
	    }
    }
    return keyboard
end

local action = function(msg, blocks, ln)
    if blocks[1] == 'helps' or blocks[1] == 'helps' then
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
        if msg.chat.type == 'private' then
            local message = lang[msg.ln].helps:compose(msg.from.first_name:mEscape())
            local keyboard = do_keyboard_private2()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
			if msg.chat.type == 'group' or msg.chat.type == 'supergroup' then
          api.sendKeyboard(msg.chat.id, '📃 برای استفاده از اموزش ها باید این دستور را در پی وی ربات بزنید' ,do_keyboard_startme(), true)
        end
        return
    end

    if msg.cb then
        local query = blocks[1]
        local msg_id = msg.message_id
        local text
if query == 'home' then
            local keyboard = do_keyboard_private2()
		    api.editMessageText(msg.chat.id, msg.message_id, lang[msg.ln].helps, keyboard, true)
end
    end

end

return {
	action = action,
	triggers = {
	    '^/(helps)$',
	    '^/(helps)$',
	    '^###cb:!(home)',

    }
}
