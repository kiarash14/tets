
local function do_keyboard_private3()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '👾 Information', callback_data = '!robot'},
	        },
                {
	        {text = '🔙 Back to Main Menu', callback_data = '!back'},
                },
                {
                {text = '🔙 Back To Help', callback_data = 'user'},
            }
    }
    return keyboard
end

local function do_keyboard_startme()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '🙃👉 Click here ! 👈🙃', url = 'https://telegram.me/'..bot.username}
	    }
    }
    return keyboard
end

local action = function(msg, blocks, ln)
    if blocks[1] == 'start22' or blocks[1] == 'help22' then
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
        if msg.chat.type == 'private' then
            local message = [[🎲Others:]]
            local keyboard = do_keyboard_private3()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
			if msg.chat.type == 'group' or msg.chat.type == 'supergroup' then
          api.sendKeyboard(msg.chat.id, 'Hey 👋 Please `start` me in *PV* 🖐😄👇' ,do_keyboard_startme(), true)
        end
        return
    end

    if msg.cb then
        local query = blocks[1]
        local msg_id = msg.message_id
        local text
if query == 'home2' then
            local text = [[🎲 Others:]]
            local keyboard = do_keyboard_private3()
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
	    '^###cb:!(home2)',

    }
}
