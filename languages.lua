local emoji = {
    shaking_hand = '👋🏼',
    alert = '⚠️'
}

return {
    en = {
        config = {
            private = '_Config KeyBoard Send To Your Private_',
            main = 'Surf this keyboard to change the group settings'
        },
        status = {
            kicked = '&&&1 is banned from this group',
            left = '&&&1 left the group or has been kicked and unbanned',
            administrator = '&&&1 is an Admin',
            creator = '&&&1 is the group creator',
            unknown = 'This user has nothing to do with this chat',
            member = '&&&1 is a chat member'
        },
        userinfo = {
            header_1 = '*Ban info (globals)*:\n',
            warns = '`Warns`: ',
            media_warns = '`Media warns`: ',
            remwarns_kb = 'Remove warns',
            reply_or_mention = 'Reply to an user or mention him (works by id too)'
        },
        getban = {
            header = '*Global stats* for ',
            nothing = '`Nothing to display`',
            kick = 'Kick: ',
            ban = 'Ban: ',
            tempban = 'Tempban: ',
            flood = 'Removed for flood: ',
            warn = 'Removed for warns: ',
            media = 'Removed for forbidden media: ',
            arab = 'Removed for arab chars: ',
            rtl = 'Removed for RTL char: ',
            kicked = '_Kicked!_',
            banned = '_Banned!_'
        },
        bonus = {
            general_pm = '_I\'ve sent you the message in private_',
            no_user = 'I\'ve never seen this user before.\nIf you want to teach me who is he, forward me a message from him',
            the_group = 'the group',
            adminlist_admin_required = 'I\'m not a group Admin.\n*Only an Admin can see the administrators list*',
            settings_header = 'Current settings for *the group*:\n\n*Language*: `&&&1`\n',
            reply = '*Reply to someone* to use this command, or write a *username*',
            too_long = 'This text is too long, I can\'t send it',
            msg_me = '_Message me first so I can message you_',
            menu_cb_settings = 'Tap on an icon!',
            menu_cb_warns = 'Use the row below to change the warns settings!',
        },
        not_mod = 'You are *not* an admin',
        breaks_markdown = 'This text breaks the markdown.\nMore info about a proper use of markdown [here](https://telegram.me/GroupButler_ch/46).',
        credits = '*UseFul Links Of SpamProof* [Bot](https://telegram.me/botnews)',
        helps = '⁉️ *Some pepole ask from the bot commands, you can select one of your quetions and see the answer*!\n_If your answer is about make admin bot, click_ [here](https://telegram.me/SpamProofChannel/2)',        
        extra = {
            setted = '&&&1 Saved!',
            no_commands = 'No commands set!',
            commands_list = 'List Of [Extra](https://telegram.me/spamproofchannel) Commands:\n&&&1',
            command_deleted = '&&&1 command has been deleted',
            command_empty = '&&&1 command does not exist'
        },
        help = {
            mods = {
                banhammer = [[*Moderators: banhammer powers*

`/kick [by reply|username]` = kick a user from the group (he can be added again).
`/ban [by reply|username]` = ban a user from the group (also from normal groups).
`/tempban [minutes]` = ban an user for a specific amount of minutes (minutes must be < 10.080, one week). For now, only by reply.
`/unban [by reply|username]` = unban the user from the group.
`/user [by reply|username|text mention|id]` = shows how many times the user has been banned *in all the groups*, and the warns received.
`/status [username|id]` = show the current status of the user `(member|kicked/left the chat|banned|admin/creator|never seen)`.]],
                info = [[*Moderators: info about the group*
                
`/setrules [group rules]` = set the new regulation for the group (the old will be overwritten).
`/setrules -` = delete the current rules.
`/addrules [text]` = add some text at the end of the existing rules.
`/setabout [group description]` = set a new description for the group (the old will be overwritten).
`/setabout -` = delete the current description.
`/addabout [text]` = add some text at the end of the existing description."

*Note:* the markdown is supported. If the text sent breaks the markdown, the bot will notify that something is wrong.
For a correct use of the markdown, check [this post](https://telegram.me/GroupButler_ch/46) in the channel]],
                flood = [[*Moderators: flood settings*

`/antiflood` = manage the flood settings in private, with an inline keyboard. You can change the sensitivity, the action (kick/ban), and even set some exceptions.
`/antiflood [number]` = set how many messages a user can write in 5 seconds.
_Note_ : the number must be higher than 3 and lower than 26.]],
                media = [[*Moderators: media settings*

`/config` command, then `media` button = receive via private message an inline keyboard to change all the media settings.
`/warnmax media [number]` = set the max number of warnings before be kicked/banned for have sent a forbidden media.
`/nowarns (by reply)` = reset the number of warnings for the users (*NOTE: both regular warnings and media warnings*).

*List of supported media*: _image, audio, video, sticker, gif, voice, contact, file, link, telegram.me links_]],
                welcome = [[Moderators: *welcome settings*

`/menu` = receive in private the menu keyboard. You will find an option to enable/disable the welcome message.

*Custom welcome message:*
`/welcome Welcome $name, enjoy the group!`
Write after "/welcome" your welcome message. You can use some placeholders to include the name/username/id of the new member of the group
Placeholders: _$username_ (will be replaced with the username); _$name_ (will be replaced with the name); _$id_ (will be replaced with the id); _$title_ (will be replaced with the group title).

*GIF/sticker as welcome message*
You can use a particular gif/sticker as welcome message. To set it, reply to a gif/sticker with "/welcome"]],
                extra = [[*Moderators: extra commands*

`/extra [#trigger] [reply]` = set a reply to be sent when someone writes the trigger.
_Example_ : with "`/extra #hello Good morning!`", the bot will reply "Good morning!" each time someone writes #hello.
You can reply to a media (_photo, file, vocal, video, gif, audio_) with `/extra #yourtrigger` to save the #extra and receive that media each time you use # command
`/extra list` = get the list of your custom commands.
`/extra del [#trigger]` = delete the trigger and its message.

*Note:* the markdown is supported. If the text sent breaks the markdown, the bot will notify that something is wrong.
For a correct use of the markdown, check [this post](https://telegram.me/GroupButler_ch/46) in the channel]],
                warns = [[*Moderators: warns*

`/warn [by reply]` = warn a user. Once the max number is reached, he will be kicked/banned.
`/warnmax [number]` = set the max number of the warns before the kick/ban.
`/warnmax media [number]` = set the max number of the warns before kick/ban when an unallowed media is sent.

How to see how many warns a user has received (or to reset them): use `/user` command.
How to change the max. number of warnings allowed: `/config` command, then `menu` button.
How to change the max. number of warnings allowed for media: `/config` command, then `media` button.]],
                char = [[*Moderators: special characters*

`/config` command, then `menu` button = you will receive in private the menu keyboard.
Here you will find two particular options: _Arab and RTL_.

*Arab*: when Arab it's not allowed (🚫), everyone who will write an arab character will be kicked from the group.
*Rtl*: it stands for 'Righ To Left' character, and it's the responsible of the weird service messages that are written in the opposite sense.
When Rtl is not allowed (🚫), everyone that writes this character (or that has it in his name) will be kicked.]],
                links = [[*Moderators: links*

`/setlink [link|-]` : set the group link, so it can be re-called by other admins, or unset it.
`/link` = get the group link, if already setted by the owner.

*Note*: the bot can recognize valid group links. If a link is not valid, you won't receive a reply.]],
                lang = [[*Moderators: group language*\n\n"
`/lang` = choose the group language (can be changed in private too).

*Note*: translators are volunteers, so I can't ensure the correctness of all the translations. And I can't force them to translate the new strings after each update (not translated strings are in english).

Anyway, translations are open to everyone. Use `/strings` command to receive a _.lua_ file with all the strings (in english).
Use `/strings [lang code]` to receive the file for that specific language (example: _/strings es_ ).
In the file you will find all the instructions: follow them, and as soon as possible your language will be available]],
                settings = [[*Moderators: group settings*

`/config` = manage the group settings in private with a comfortable inline keyboard.
The inline keyboard has three sub-menus:

*Menu*: manage the most important group settings
*Antiflood*: turn on or off the antiflood, set its sensitivity and choose some media to ignore, if you want
*Media*: choose which media to forbid in your group, and set the number of times that an user will be warned before being kicked/banned]],
            },
            all = [[*Commands for all*:
`/dashboard` : see all the group info from private
`/rules` : show the group rules (via pm)
`/about` : show the group description (via pm)
`/adminlist` : show the moderators of the group (via pm)
`/kickme` : get kicked by the bot
`/echo [text]` : the bot will send the text back (with markdown, available only in private for non-admin users)
`/info` : show some useful informations about the bot
`/groups` : show the list of the discussion groups
`/help` : show this message.'

[🎫 Channel](https://telegram.me/SpamProofChannel)]],
		     private = 'Hi, *&&&1*!\n'
                    ..'I/m KeyWord~Im Manneging up 100 Groups!🤗\n'
                    ..'\n_How i can helping you?_\n'
                    ..'🎩* I Can Do Them:*\n'
                    ..'• *You Can Kick Or Ban USers In GRoups Or Super Groups*\n'
                    ..'• ✍🏻*You can write tules and about for your group*\n'
                    ..'• 🔰*I Auto Switch AntiSpam Mode!*🔰\n'
                    ..'• ⚠*You Can Warn USers When They Sends : gif - photo - sticker - film*\n'
                    ..'•For use me geting admin me in your group\n'
                    ..'💻 Developer : [Arian](https://telegram.me/arian721) \n'
                    ..'*Thanks!*',
            group_success = '_I\'ve sent you the help message in private_',
            group_not_success = '_Please message me first so I can message you_',
            initial = 'You can surf this keyboard to see *all the available commands*',
            kb_header = 'Select one of *related* commands'
        },
        links = {
            no_link = '`No Link`\nSetlink with /setlink {link}',
            link = '✅ *Group Link* : [&&&1](&&&2)',
            link_no_input = 'This is not a *public supergroup*, so you need to write the link near /setlink',
            link_invalid = 'This link is *not valid!*',
            link_updated = 'The link has been updated.\n*Here\'s the new link*: [&&&1](&&&2)',
            link_setted = 'The link has been setted.\n*Here\'s the link*: [&&&1](&&&2)',
            link_unsetted = 'Link *unsetted*',
        },
        mod = {
            modlist = '*Creator*:\n&&&1\n\n*Admins*:\n&&&2'
        },
        service = {
            welcome = 'Hi &&&1, and welcome to *&&&2*!',
            welcome_rls = 'Total anarchy!',
            welcome_abt = 'No description for this group.',
            welcome_modlist = '\n\n*Creator*:\n&&&1\n*Admins*:\n&&&2',
            abt = '\n\n*Description*:\n',
            rls = '\n\n*Rules*:\n',
        },
        setabout = {
            no_bio = '*No description* for this group.',
            no_bio_add = '*No description for this group*.\nUse /setabout [bio] to set-up a new description',
            no_input_add = 'Please write something next this poor "/addabout"',
            added = '*Description added:*\n"&&&1"',
            no_input_set = 'Please write something next this poor "/setabout"',
            clean = 'The bio has been cleaned.',
            about_setted = 'New description *saved successfully*!'
        },
        setrules = {
            no_rules = '*-empty-*',
            no_rules_add = '*No rules* for this group.\nUse /setrules [rules] to set them',
            no_input_add = 'Please write something next this poor "/addrules"',
            added = '*Rules added:*\n"&&&1"',
            no_input_set = 'Please write something next this poor "/setrules"',
            clean = 'Rules has been wiped.',
            rules_setted = 'New rules *saved successfully*!'
        },
        settings = {
            disable = {
                welcome_locked = 'Welcome message won\'t be displayed from now',
                extra_locked = '#extra commands are now available only for moderator',
                flood_locked = 'Anti-flood is now off',
                rules_locked = '/rules will reply in private (for users)',
            },
            enable = {
                welcome_unlocked = 'Welcome message will be displayed',
                rules_unlocked = '/rules will reply in the group (with everyone)',
                extra_unlocked = 'Extra # commands are now available for all',
                flood_unlocked = 'Anti-flood is now on',
            },
            welcome = {
                no_input = 'Welcome and...?',
                media_setted = 'New media setted as welcome message: ',
                reply_media = 'Reply to a `sticker` or a `gif` to set them as *welcome message*',
                custom_setted = '*Welcome saved!*',
                wrong_markdown = '_Not setted_ : I can\'t send you back this message, probably the markdown is *wrong*.\nPlease check the text sent',
            },
            resume = {
                header = 'Current settings for *&&&1*:\n\n*Language*: `&&&2`\n',
                w_no = '*Welcome type*: `welcome only`\n',
                w_media = '*Welcome type*: `gif/sticker`\n',
                w_custom = '*Welcome type*: `custom message`\n',
                w_default = '*Welcome type*: `default message`\n',
                legenda = '✅ = _enabled/allowed_\n🚫 = _disabled/not allowed_\n👥 = _sent in group (always for admins)_\n👤 = _sent in private_'
            },
            char = {
                arab_kick = 'Senders of arab messages will be kicked',
                arab_ban = 'Senders of arab messages will be banned',
                arab_allow = 'Arab language allowed',
                rtl_kick = 'The use of the RTL character will lead to a kick',
                rtl_ban = 'The use of the RTL character will lead to a ban',
                rtl_allow = 'RTL character allowed',
            },
            Welcome = 'Welcome message',
            Extra = 'Extra',
            Flood = 'Anti-flood',
            Rtl = 'Rtl',
            Silent = 'Silent mode',
            Arab = 'Arab',
            Rules = 'Rules',
        },
        warn = {
            warn_reply = 'Reply to a message to warn the user',
            changed_type = 'New action on max number of warns received: *&&&1*',
            mod = 'A moderator can\'t be warned',
            warned_max_kick = 'User &&&1 *kicked*: reached the max number of warnings',
            warned_max_ban = 'User &&&1 *banned*: reached the max number of warnings',
            warned = '&&&1 *has been warned.*\n_Number of warnings_   *&&&2*\n_Max allowed_   *&&&3*',
            warnmax = 'Max number of warnings changed&&&3.\n*Old* value: &&&1\n*New* max: &&&2',
            warn_removed = '*Warn removed!*\n_Number of warnings_   *&&&1*\n_Max allowed_   *&&&2*',
            inline_high = 'The new value is too high (>12)',
            inline_low = 'The new value is too low (<1)',
            zero = 'The number of warnings received by this user is already _zero_',
            nowarn = 'The number of warns received by this user has been *reset*'
        },
        setlang = {
            list = '*Select Lang*',
            success = 'The *English 👥* Language Has Been Setted',
        },
		banhammer = {
            kicked = '&&&1 kicked &&&2!',
            banned = '&&&1 banned &&&2!',
            already_banned_normal = '&&&1 is *already banned*!',
            unbanned = 'User unbanned by &&&1!',
            reply = 'Reply to someone',
            not_banned = 'The user is not banned',
            banlist_header = '*Banned users*:\n\n',
            banlist_empty = '_The list is empty_',
            banlist_error = '_An error occurred while cleaning the banlist_',
            banlist_cleaned = '_The banlist has been cleaned_',
            tempban_zero = 'For this, you can directly use /ban',
            tempban_week = 'The time limit is one week (10.080 minutes)',
            tempban_banned = 'User &&&1 banned. Ban expiration:',
            tempban_updated = 'Ban time updated for &&&1. Ban expiration:',
            general_motivation = 'I can\'t kick this user.\nProbably I\'m not an Amdin, or the user is an Admin iself'
        },
        floodmanager = {
            number_invalid = '`&&&1` is not a valid value!\nThe value should be *higher* than `3` and *lower* then `26`',
            not_changed = 'The max number of messages is already &&&1',
            changed_plug = 'The *max number* of messages (in *5 seconds*) changed _from_  &&&1 _to_  &&&2',
            kick = 'Now flooders will be kicked',
            ban = 'Now flooders will be banned',
            changed_cross = '&&&1 -> &&&2',
            text = 'Texts',
            image = 'Images',
            sticker = 'Stickers',
            gif = 'Gif',
            video = 'Videos',
            sent = '_I\'ve sent you the anti-flood menu in private_',
            ignored = '[&&&1] will be ignored by the anti-flood',
            not_ignored = '[&&&1] won\'t be ignored by the anti-flood',
            number_cb = 'Current sensitivity. Tap on the + or the -',
            header = [[You can manage the group flood settings from here.

*1st row*
• *ON/OFF*: the current status of the anti-flood
• *Kick/Ban*: what to do when someone is flooding

*2nd row*
• you can use *+/-* to change the current sensitivity of the antiflood system
• the number it's the max number of messages that can be sent in _5 seconds_
• max value: _25_ - min value: _4_

*3rd row* and below
You can set some exceptions for the antiflood:
• ✅: the media will be ignored by the anti-flood
• ❌: the media won\'t be ignored by the anti-flood
• *Note*: in "_texts_" are included all the other types of media (file, audio...)]]
        },
        mediasettings = {
            media_texts = {
                image = 'Images',
                video = 'Videos',
                file = 'Documents',
                TGlink = 'Links',
                voice = 'Vocal messages',
                gif = 'Gifs',
                link = 'Links',
                audio = 'Music',
                sticker = 'Stickers',
                contact = 'Contacts',
            },
            settings_header = '*Current settings for media*:\n\n',
            cb_alert = emoji.alert..' Tap on the right column',
            changed = 'New status = &&&1',
        },
        preprocess = {
            flood_ban = ' *banned* for flood!',
            flood_kick = ' *kicked* for flood!',
            media_kick = ' *kicked*: media sent not allowed!',
            media_ban = ' *banned*: media sent not allowed!',
            rtl_kicked = ' *kicked*: rtl character in names/messages not allowed!',
            arab_kicked = ' *kicked*: arab message detected!',
            rtl_banned = ' *banned*: rtl character in names/messages not allowed!',
            arab_banned = ' *banned*: arab message detected!',
            first_warn = 'This type of media is *not allowed* in this chat.',
        },
        kick_errors = {
            [1] = 'I\'m not an admin, I can\'t kick people',
            [2] = 'I can\'t kick or ban an admin',
            [3] = 'There is no need to unban in a normal group',
            [4] = 'This user is not a chat member',
        },
        all = {
            dashboard = {
                private = '_I ve Send Dashboard To Your PV_',
                first = 'Navigate this message to see *all the info* about this group!',
                antiflood = '- *Status*: `&&&1`\n- *Action* when an user floods: `&&&2`\n- Number of messages *every 5 seconds* allowed: `&&&3`\n- *Ignored media*:\n&&&4',
                settings = 'Settings',
                admins = 'Admins',
                rules = 'Rules',
                about = 'Description',
                welcome = 'Welcome message',
                extra = 'Extra commands',
                media = 'Media settings',
                flood = 'Flood settings'
            },
            menu_first = [[Manage the settings of the group.
📘 _Short legenda_:

*Extra*:
• 👥: the bot will reply *in the group*, with everyone
• 👤: the bot will reply *in private* with normal users and in the group with admins

*Silent mode*:
If enabled, the bot won't send a confirmation message in the group when soemone use /group, /dashboard or /help commands.
It will just send the message in private.]],
            media_first = [[Tap on a voice in the right colon to *change the setting*
You can use the last line to change how many warnings should the bot give before kick/ban someone for a forbidden media
The number is not related the the normal `/warn` command']],
        },
    },
	fa = {
	    config = {
            private = '_I\'ve sent you the settings keyboard in private_',
            main = 'Surf this keyboard to change the group settings'
        },
        status = {
            kicked = 'کاربر &&&1 در این گروه مسدود شده است',
            left = 'کاربر &&&1 از گروه خارج شده یا از گروه اخراج شده است',
            administrator = 'ادمین گروه &&&1',
            creator = '&&&1 سازنده گروه',
            unknown = 'این کاربر فعالیتی در گروه نداشته است',
            member = '&&&1 یک کاربر ساده است'
        },
        userinfo = {
            header_1 = '*وضعیت جهانی کاربر*:\n',
            warns = '`اخطارها`: ',
            media_warns = '`اخطارهای رسانه`: ',
            remwarns_kb = 'حذف اخطارها',
            reply_or_mention = 'Reply to an user or mention him (works by id too)'
        },
        getban = {
            header = '*وضعیت جهانی* for ',
            nothing = '`موردی یافت نشد`',
            kick = 'اخراج: ',
            ban = 'مسدود: ',
            tempban = 'اخراج مدت دار: ',
            flood = 'اخراج برای اسپم: ',
            warn = 'اخراج برای اخطار: ',
            media = 'اخراج بخاطر ارسال رسانه غیر مجاز: ',
            arab = 'اخراج برای تایپ عربی: ',
            rtl = 'اخراج برای rtl: ',
            kicked = '_اخراج!_',
            banned = '_مسدود!_'
        },
        bonus = {
            general_pm = '_در پیام خصوصی شما ارسال شد_',
            no_user = 'من این کاربر را در گروه ندیدم\n اگر میخواهید این کاربر را به من معرفی کنید لطفا یکی از پیام های ارسال شده توسط ایشان را برای من ریپلای کنید.',
            the_group = 'گروه',
            adminlist_admin_required = 'من مدیر نیستم.\n*فقط درصورت مدیر بودن میتوان لیست میدارن را دریافت کرد*',
            settings_header = 'وضعیت فعلی گروه:\n\n*زبان*: `&&&1`\n',
            reply = 'یک نفر را ریپلای کنید یا یوزرنیم شخصی را بنویسید',
            too_long = 'این پیام خیلی طولانیست و من قادر به ارسال این پیام نیستم',
            msg_me = '_اول به من پیام بده تا بتونم برای شما پیام ارسال کنم_',
            menu_cb_settings = 'روی آیکون ها بزنید',
            menu_cb_warns = 'روی نمابرهای زیر بزنید تا اخطارها تغییر کنند!',
        },
        not_mod = 'شما از مدیران نیستید!',
        breaks_markdown = 'این مدل نشانه گذاری قابل قبول نیست.\n اطلاعات بیشتر برای درست استفاده کردن از قابلیت نشانه گذاری را در [این صفحه](https://telegram.me/GroupButler_ch/46) مطالعه کنید.',
        credits = '*برخی از لینک های کارآمد:*',
        helps = '⁉️ خیلی از افراد درباره دستور های ربات سؤال می کنند.می توانید با کلیک کردن روی سیوال خود جواب ان را ببینید\nاگر سؤال شما درباره ادمین کردن ربات است,[اینجا](https://telegram.me/SpamProofChannel/2) را بزنید', 
        extra = {
            setted = '&&&1 ذخیره شد',
			no_commands = 'هیچ دستوری ذخیره نشده!',
            commands_list = 'لیست دستورهای ذخیره شده:\n&&&1',
            command_deleted = '&&&1 حذف شد',
            command_empty = '&&&1 وجود ندارد'
        },
        help = {
            mods = {
                banhammer = "*مدیریت: ابزار اخراج*\n\n"
                            .."`/kick [by reply|username]` = حذف کاربر از گروه (کاربر قابلیت برگشتن به گروه را دارد)\n"
                            .."`/ban [by reply|username]` = مسدود یا بن کردن کاربر (کاربر نمی تواند وارد گروه شود حتی در گروه های معمولی)\n"
                            .."`/tempban [minutes]` = ban an user for a specific amount of minutes (minutes must be < 10.080, one week). For now, only by reply.\n"
                            .."`/unban [by reply|username]` = خارج کردن کاربر از لیست مسدودها\n"
                            .."`/user [by reply|username|text mention|id]` = shows how many times the user has been banned *in all the groups*, and the warns received.\n"
                            .."`/status [username|id]` = show the current status of the user `(member|kicked/left the chat|banned|admin/creator|never seen)`.\n",
                info = [[*مدیریت: اطلاعات گروه*

`/setrules [group rules]` = تعریف قانون جدید برای گروه (این دستور قوانین قبلی را حذف خواهد کرد)
`/setrules -` = delete the current rules.
`/addrules [text]` = اضافه کردن متنی به پایان قوانین گروه
`/setabout [group description]` = تعریف توضییحات جدید برای گروه (این دستور توضییحات قبلی را حذف خواهد کرد)
`/setabout -` = delete the current description.
`/addabout [text]` = اضافه کردن متنی به پایان توضییحات گروه

*تذکر:* نشانه دار کردن در این قسمت پشتیبانی می شود..\n"
برای استفاده درست ازین امکان به [این صفحه](https://telegram.me/GroupButler_ch/46) مراجعه کنید.]],
                flood = "*مدیریت: ضد اسپم*\n\n"
                        .."`/antiflood` = manage the flood settings in private, with an inline keyboard. You can change the sensitivity, the action (kick/ban), and even set some exceptions.\n"
                        .."`/antiflood [number]` = set how many messages a user can write in 5 seconds.\n"
                        .."_Note_ : the number must be higher than 3 and lower than 26.\n",
                media = [[*مدیریت: تنظیمات مدیا*

`/config` command, then `media` button = تنظیمات مدیا در پیام خصوصی، ابتدا این دستور را در گروه خود ارسال نمایید تا تنظیمات به پیام خصوصی شما ارسال شود.
`/warnmax media [number]` = set the max number of warnings before be kicked/banned for have sent a forbidden media.
`/nowarns (by reply)` = reset the number of warnings for the users (*NOTE: both regular warnings and media warnings*).

*لیست رسانه های قابل تنظیم*: _image, audio, video, sticker, gif, voice, contact, file, link, telegram.me links_]],
                welcome = "*مدیزیت: تنظیمات پیام خوش آمدگویی*\n\n"
                            .."`/menu` = فعال و غیر فعال کردن پیام خوش آمدگویی توسط صفحه کلید \n"
                            .."\n*شخصی سازی پیام خوش آمد گویی:*\n"
                            .."`/welcome سلام $name به گروه ما خوش آمدید`\n"
                            .."بعد از دستور `/welcome` متن خوش آمدگویی خود رابنویسید.\n"
                            .." _$username_ (نمایش یوزرنیم کاربر); _$name_ (نمایش نام کاربر); _$id_ (نمایش شناسه کاربری); _$title_ (نمایش نام گروه شما).\n"
                            .."\nارسال استیکر و گیف بعنوان پیام خوش آمدگویی\n"
                            .."ابتدا استکیر و یا گیف مورد نظر را ارسال نمایید سپس به دستور `/welcome` استیکر و گیف مورد نظر را ریپلای کنید\n",
                extra = "*مدیریت: ذخیره دستورها*\n\n"
                        .."`/extra [#trigger] [reply]` = با ریپلای ذخیره خواهد شد و زمانی که کاربران trigger بنویسند ربات پاسخ خواهد داد.\n"
                        .."_مثال_ : با \"`/extra #hello Good morning!`\", ربات جواب خواهد داد \"Good morning!\" اگر کاربری #hello بنویسد.\n"
                        .."شما میتوانید مدیا را ریپلای کنید (_photo, file, vocal, video, gif, audio_) با `/extra #yourtrigger` دستور ذخیره میشود و هر کاربری #دستور شما را بفرستد ربات پاسخ خواهد داد.\n"
                        .."`/extra list` = نمایش دستورهای ذخیره شده\n"
                        .."`/extra del [#trigger]` = حذف دستور \n"
                        .."\n*تذکر:* نشانه دار کردن در این قسمت پشتیبانی می شود..\n"
                        .."برای استفاده درست ازین امکان به [این صفحه](https://telegram.me/GroupButler_ch/46) مراجعه کنید.",
                warns = [[*Moderators: warns*

`/warn [by reply]` = warn a user. Once the max number is reached, he will be kicked/banned.
`/warnmax [number]` = set the max number of the warns before the kick/ban.
`/warnmax media [number]` = set the max number of the warns before kick/ban when an unallowed media is sent.

How to see how many warns a user has received (or to reset them): use `/user` command.
How to change the max. number of warnings allowed: `/config` command, then `menu` button.
How to change the max. number of warnings allowed for media: `/config` command, then `media` button.]],
                char = "*مدیریت: کاراکترهای خاص*\n\n"
                        .."`/config` command, then `menu` button = شما در پیام خصوصی کیبورد تنظیمات دریافت خواهید کرد\n"
                        .."شما دراینجا دو گزینه میبینید: _Arab و RTL_.\n"
                        .."\n*Arab*: when Arab it's not allowed (🚫), everyone who will write an arab character will be kicked from the group.\n"
                        .."*Rtl*: it stands for 'Righ To Left' character, and it's the responsible of the weird service messages that are written in the opposite sense.\n"
                        .."When Rtl is not allowed (🚫), everyone that writes this character (or that has it in his name) will be kicked.",
                links = "*مدیریت: links*\n\n"
                        .."`/setlink [link|-]` : تنظیم و یا حذف لینک، ادمین ها میتوانند درخواست لینک کنند\n"
                        .."`/link` = گرفتن لینک گروه در صورتی که سازنده گروه قبلا ثبت کرده باشد\n"
                        .."\n*تذکر*: اگر لینک ارسال صحیح نباشد ربات به شما پاسخی نمی دهد.",
                lang = "*مدیریت: زبان گروه*\n\n"
                        .."`/lang` = انتخاب زبان گروه، در پیام خصوصی هم قابل استفاده است.\n"
                        .."\n*Note*: translators are volunteers, so I can't ensure the correctness of all the translations. And I can't force them to translate the new strings after each update (not translated strings are in english)."
                        .."\nAnyway, translations are open to everyone. Use `/strings` command to receive a _.lua_ file with all the strings (in english).\n"
                        .."Use `/strings [lang code]` to receive the file for that specific language (example: _/strings es_ ).\n"
                        .."In the file you will find all the instructions: follow them, and as soon as possible your language will be available ;)",
                settings = [[*Moderators: group settings*

`/config` = manage the group settings in private with a comfortable inline keyboard.
The inline keyboard has three sub-menus:

*Menu*: manage the most important group settings
*Antiflood*: turn on or off the antiflood, set its sensitivity and choose some media to ignore, if you want
*Media*: choose which media to forbid in your group, and set the number of times that an user will be warned before being kicked/banned]],
            },
            all = [[*دستورهای عمومی*:
/dashboard` : نمایش اطلاعات گروه در پیام خصوصی
/rules` : نمایش قوانین گروه
/about` : نمایش توضییحات گروه
/adminlist` : نمایش مدیران گروه
/kickme` : خارج شدن توسط ربات
/id` : گرفتن آیدی گروه یا گرفتن آیدی کاربر اگر ریپلای کنید
/echo [text]` : نشانه دار کردن متن در پیام خصوصی
/info` : نمایش برخی اطلاعات مربوط به ربات
/groups` : get the list of the discussion groups
/help` : نمایش این پیام]],
		     private = 'سلام, *&&&1*!\n'
                    ..'من یک ربات برای مدیریت گروه هم اکنون بالای 1000 گروه را مدیریت می کنم 🤗\n'
                    ..'\n_و چه کمکی به شما میتونم بکنم؟_\n'
                    ..'بسیار عالی، من قابلیت های بسیار زیادی دارم\n'
                    ..'• شما می توانید کاربران را در گروه اخراج کنید و یا از گروه محروم کنید (حتی در گروه های معمولی)\n'
                    ..'• ✍🏻 میتوانید قوانین و توضیحاتی برای گروه بنویسید\n'
                    ..'• 🔰و میتوانید سیستم ضد اسپم فوق پیشرفته من را فعال کنید و همینطور می توانم کاربرانی که در گروه شما تبلیغ می کنند اخراج کنم (بخش تنظیمات رسانه)🔰\n'
                    ..'• 🗣 میتوانم پیام خوش آمد گویی مورد نظر شما را به کاربران بدم و حتی میتوانید اینکارا برای اولین بار در تلگرام با استیکر 🏖 یا گیف 🌠 انجام دهم.\n'
                    ..'• ⚠️ می توانم به کاربران اخطار بدم و کاربرانی که اخطار زیاد گرفتند را اخراج کنم‼️\n'
                    ..'• می توانم رسانه های ارسالی به گروه شما را مدیریت کنم : گیف 🌠، عکس 🌅، ویدئو📼، صدای ضبط شده 🗣، شماره مخطابین 👥، استیکر 🏖، لینک گروه 🌐\n'
                    ..'برای انجام کارهای بالا لطفا من را مدیر گروه کنید \n[🐳 مدیر کردن اسپم پروف](https://telegram.me/spamproofchannel) \n'
                    ..'💻 Developer : [Arian](https://telegram.me/arian721) \n'
                    ..'برای تغیر زبان به _انگلیسی_ /lang را فرستاده و سپس روی en کلیک نمایید.\n',
            group_success = '_من به شما پیام خصوصی خواهم داد_',
            group_not_success = '_لطفا اول به من پیام دهید تا بتوانم به شما پیام بفرستم_',
            initial = 'You can surf this keyboard to see *all the available commands*',
            kb_header = 'Tap on a button to see the *related commands*'
        },
        links = {
            no_link = 'هیچ لینکی برای این گروه تعریف نشده از سازنده بخواهید یک لینک جدید تعریف کند!',
            link = '[&&&1](&&&2)',
            link_no_input = 'این یک گروه عمومی نیست لطفا بعد از دستور لینک خود را بنویسید',
            link_invalid = 'این لینک معتبر نیست',
            link_updated = 'لینک بروز رسانی شد.\n*لینک جدید*: [&&&1](&&&2)',
            link_setted = 'لینک گروه ذخیره شد.\n*لینک ذخیره شده*: [&&&1](&&&2)',
            link_unsetted = 'لینک حذف شد',
        },
        mod = {
            modlist = '*سازنده گروه*:\n&&&1\n\n*مدیران*:\n&&&2'
        },
        service = {
            welcome = 'Hi &&&1, and welcome to *&&&2*!',
            welcome_rls = 'Total anarchy!',
            welcome_abt = 'هیچ توضییحاتی ذخیره نشده',
            welcome_modlist = '\n\n*سازنده گروه*:\n&&&1\n*مدیران*:\n&&&2',
            abt = '\n\n*توضییحات*:\n',
            rls = '\n\n*قوانین*:\n',
        },
        setabout = {
            no_bio = 'توضییحاتی برای این گروه ذخیره نشده',
            no_bio_add = 'توضییحاتی برای گروه ذخیره نشده\n از دستور /setabout برای ذخیره استفاده کنید',
            no_input_add = 'لطفا بعد از دستور "/addabout" متنی بنویسید',
            added = '*توضییحات اضافه شد:*\n"&&&1"',
            no_input_set = 'لطفا بعد از دستور "/setabout" متنی بنویسید ',
            clean = 'توضییحات حذف شد',
            about_setted = 'توضییحات جدید با موفقیت ذخیره شد!'
        },
        setrules = {
            no_rules = 'قوانینی ذخیره نشده',
            no_rules_add = 'هیچ قوانینی ذخیره نشده.\nاز دستور /setrules برای ذخیره قوانین استفاده کنید',
            no_input_add = 'لطفا بعد از دستور "/addrules" متنی بنویسید',
            added = '*قوانین اضافه شد:*\n"&&&1"',
            no_input_set = 'لطفا بعد از دستور "/setrules" متنی بنویسید ',
            clean = 'قوانین حذف شد',
            rules_setted = 'قوانین جدید با موفقیت ذخیره شد'
        },
        settings = {
            disable = {
                welcome_locked = 'پیام خوش آمدگویی نمایش داده نخواهد شد',
                extra_locked = 'دستور #extra فقط برای مدیران فعال شد',
                rules_locked = '/rules will reply in private (for users)',
                flood_locked = 'ضد اسپم خاموش شد',
           },
            enable = {
               welcome_unlocked = 'پیام خوش آمدگویی نمایش داده می شود',
               extra_unlocked = 'دستور #extra برای همه فعال شد',
               rules_unlocked = '/rules will reply in the group (with everyone)',
               flood_unlocked = 'ضد اسپم روشن شد',
            },
            welcome = {
                no_input = 'Welcome and...?',
                media_setted = 'New media setted as welcome message: ',
                reply_media = 'Reply to a `sticker` or a `gif` to set them as *welcome message*',
                custom_setted = '*Custom welcome message saved!*',
                wrong_markdown = '_Not setted_ : I can\'t send you back this message, probably the markdown is *wrong*.\nPlease check the text sent',
            },
            resume = {
                header = 'تنظیمات فعلی *&&&1*:\n\n*زبان*: `&&&2`\n',
                w_media = '*Welcome type*: `gif/sticker`\n',
                w_custom = '*Welcome type*: `custom message`\n',
                w_default = '*Welcome type*: `default message`\n',
                legenda = '✅ = _فعال_\n🚫 = _غیرفعال_\n👥 = _ارسال در گروه_\n👤 = _ارسال به خصوصی کاربران_',
            },
            char = {
                arab_kick = 'Senders of arab messages will be kicked',
                arab_ban = 'Senders of arab messages will be banned',
                arab_allow = 'Arab language allowed',
                rtl_kick = 'The use of the RTL character will lead to a kick',
                rtl_ban = 'The use of the RTL character will lead to a ban',
                rtl_allow = 'RTL character allowed',
            },
            Welcome = 'Welcome message',
            Rules = '/rules',
            Extra = 'Extra',
            Flood = 'Anti-flood',
            Rtl = 'Rtl',
            Silent = 'Silent mode',
            Arab = 'Arab',
        },
        warn = {
            warn_reply = 'Reply to a message to warn the user',
            changed_type = 'New action on max number of warns received: *&&&1*',
            mod = 'A moderator can\'t be warned',
            warned_max_kick = 'User &&&1 *kicked*: reached the max number of warnings',
            warned_max_ban = 'User &&&1 *banned*: reached the max number of warnings',
            warned = '&&&1 *has been warned.*\n_Number of warnings_   *&&&2*\n_Max allowed_   *&&&3*',
            warnmax = 'Max number of warnings changed&&&3.\n*Old* value: &&&1\n*New* max: &&&2',
            warn_removed = '*Warn removed!*\n_Number of warnings_   *&&&1*\n_Max allowed_   *&&&2*',
            inline_high = 'The new value is too high (>12)',
            inline_low = 'The new value is too low (<1)',
            zero = 'The number of warnings received by this user is already _zero_',
            nowarn = 'The number of warns received by this user has been *reset*'
        },
        setlang = {
            list = 'زبان های موجود در اسپم پروف :',
            success = 'زبان فارسی 👥 ذخیره شد',
        },
		banhammer = {
            kicked = '&&&1 اخراج &&&2!',
            banned = '&&&1 مسدود &&&2`!',
            already_banned_normal = '&&&1 قبلا مسدود شده!',
            unbanned = 'User unbanned by &&&1!',
            reply = 'کاربری را ریپلای کنید',
            not_banned = 'کاربر مسدود نیست',
            banlist_header = '*کاربران مسدود شده*:\n\n',
            banlist_empty = '_لیست خالیست_',
            banlist_error = '_یک اشکال در هنگام تمیز کردن لیست پیش آمد_',
            banlist_cleaned = '_لیست مسدودین تمیز شد_',
            tempban_zero = 'For this, you can directly use /ban',
            tempban_week = 'The time limit is one week (10.080 minutes)',
            tempban_banned = 'User &&&1 banned. Ban expiration:',
            tempban_updated = 'Ban time updated for &&&1. Ban expiration:',
            general_motivation = 'من نمیتوانم این کاربر را اخراج کنم.\nممکنه ادمین نباشم یا این کاربر ادمین است'
        },
        floodmanager = {
            number_invalid = '`&&&1` is not a valid value!\nThe value should be *higher* than `3` and *lower* then `26`',
            not_changed = 'The max number of messages is already &&&1',
            changed_plug = 'The *max number* of messages (in *5 seconds*) changed _from_  &&&1 _to_  &&&2',
            kick = 'Now flooders will be kicked',
            ban = 'Now flooders will be banned',
            changed_cross = '&&&1 -> &&&2',
            text = 'Texts',
            image = 'Images',
            sticker = 'Stickers',
            gif = 'Gif',
            video = 'Videos',
            sent = '_تنظیمات ضد اسپم به شما ارسال می شود_',
            ignored = '[&&&1] توسط ضد اسپم نادیده گرفته می شود',
            not_ignored = '[&&&1] توسط ضد اسپم محاسبه خواهد شد',
            number_cb = 'حساسیت فعلی. روی  یا - بزنید ',
            header = 'شما میتوانید تنظیمات ضد اسپم را اینجا ببینید.\n'
                ..'\n*ردیف اول*\n'
                ..'• *ON/OFF*: وضعیت فعلی ضد اسپم\n'
                ..'• *Kick/Ban*: عکس العمل وقتی کسی اسپم میفرستد\n'
                ..'\n*ردیف دوم*\n'
                ..'• شما میتوانید با *+/-* حساسیت سیستم را تغییر دهید\n'
			    ..'• عدد مورد نظر تعداد پیامیست که کاربر میتواند در 5 ثانیه ارسال کند\n'
			..'• حداکثر: _25_ - حداقل: _4_\n'
               ..'\n*ردیف سوم* و ردیف های بعدی\n'
				..'شما میتوانید رسانه ها و پیام ها را در شمارش ضد اسپم تفکیک کنید:\n'
				..'• ✅: رسانه در سیستم ضد اسپم محاسبه نخواهد شد\n'
		        ..'• ❌: رسانه در سیستم ضد اسپم محاسبه خواهد شد\n'
				..'• *Note*: در قسمت متن تمام پیام ها غیر از رسانه های انتخابی در اینجا محاسبه خواهد شد'
        },
        mediasettings = {
            media_texts = {
                image = 'Images',
                video = 'Videos',
                file = 'Documents',
                TGlink = 'telegram.me links',
                voice = 'Vocal messages',
                gif = 'Gifs',
                link = 'Links',
                audio = 'Music',
                sticker = 'Stickers',
                contact = 'Contacts',
            },
			settings_header = '*Current settings for media*:\n\n',
            cb_alert = emoji.alert..' Tap on the right column',
            changed = 'New status = &&&1',
        },
        preprocess = {
            flood_ban = ' بخاطر اسپم مسدود شد',
            flood_kick = ' بخاطر اسپم اخراج شد',
            media_kick = ' *اخراج*: ارسال مدیا غیرمجاز',
            media_ban = ' *مسدود*: ارسال مدیا غیرمجاز!',
            rtl_kicked = ' *kicked*: rtl character in names/messages not allowed!',
            arab_kicked = ' *kicked*: arab message detected!',
            rtl_banned = ' *banned*: rtl character in names/messages not allowed!',
            arab_banned = ' *banned*: arab message detected!',
            first_warn = 'This type of media is *not allowed* in this chat.'
        },
        kick_errors = {
            [1] = 'من مدیر نیستم نمی توانم کسی را اخراج کنم',
            [2] = 'نمیتوانم مدیر را اخراج کنم!',
            [3] = 'There is no need to unban in a normal group',
            [4] = 'This user is not a chat member',
        },
        all = {
            dashboard = {
                private = '_داشبورد گروه برای شما ارسال شد_',
                first = 'Navigate this message to see *all the info* about this group!',
                antiflood = '- *Status*: `&&&1`\n- *Action* when an user floods: `&&&2`\n- Number of messages *every 5 seconds* allowed: `&&&3`\n- *Ignored media*:\n&&&4',
                settings = 'Settings',
                admins = 'Admins',
                rules = 'Rules',
                about = 'Description',
                welcome = 'Welcome message',
                extra = 'Extra commands',
                media = 'Media settings',
                flood = 'Flood settings'
            },
            menu_first = 'تنظیمات گروه را مدیریت کنید\n'
			    ..'\n برخی دستور ها (_/rules, /about, /adminlist, #extra commands_) میتوانند برای کاربران عادی غیر فعال شوند\n'
				..'وقتی دستور ها برای کاربران عادی غیرفعال شود چه اتفاقی می افتد:\n'
				..'• اگر برای کاربران فعال باشد ربات پاسخ را در گروه ارسال خواهد کرد\n'
				..'• اگر برای کاربران عادی غیر فعال شود ربات پاسخ دستور را در پیام خصوصی کاربر ارسال خواهد کرد.\n'
				..'\nآیکون های زیر وضعیت نوع نمایش دستور را نشان می دهد:\n'
                ..'• 👥: ربات در گروه پاسخ خواهد داد\n'
               ..'• 👤: ربات پاسخ را در پیام خصوصی ارسال خواهد کرد\n'
               ..'\n*Other settings*: for the other settings, icon are self explanatory\n',
            media_first = 'Tap on a voice in the right colon to *change the setting*\n'
                        ..'You can use the last line to change how many warnings should the bot give before kick/ban someone for a forbidden media\n'
                        ..'The number is not related the the normal `/warn` command',
        },
    },
}
