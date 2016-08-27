local function do_keyboard_robot()
    local keyboard = {}
    keyboard.inline_keyboard = {
		{
    					{text = '📁 کانال ما🏾', url = 'https://telegram.me/spamproofchannel'},
    					},
    					{
    		    		{text = '👤 گروه ها', callback_data = 'private:groups'},
	    },
	    {
	    {text = '🔙 برگشت', callback_data = '!home2'}
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
    if blocks[1] == 'start2' or blocks[1] == 'help2' then
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
        if msg.chat.type == 'private' then
            local message = [[📊 اطلاعات :]]
            local keyboard = do_keyboard_robot()
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
if query == 'robot' then
            local text = [[📊 اطلاعات :]]
            local keyboard = do_keyboard_robot()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
    end

end

return {
	action = action,
	triggers = {
	    '^/(start2)@BeatBotTeamBot$',
	    '^/(start2)$',
	    '^/(help2)$',
	    '^###cb:!(robot)',

    }
}
