#!/usr/bin/env python3
# -*- coding: utf8 -*-

from i3pystatus import Status
import logging
# import os
# import sys
# import getpass
import keyring


log = logging.getLogger(__name__)

status = Status(
    # logfile=os.path.expanduser('~/i3pystatus-top.log'),
)

# status.register(
#     "uname",
#     format='%s@{nodename}' % getpass.getuser(),
# )

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register(
    "clock",
    format="📆  %a %-d %b %X KW%V",
)


# status.register(
#     "scratchpad",
# )

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register(
    "load",
    format='{avg1} {avg5} {avg15} {tasks}t',
)

# status.register(
#     "mem_bar",
# )

# status.register(
#     "swap",
#     hide_if_empty=True,
# )

# Shows your CPU temperature, if you have a Intel CPU
status.register(
    "temp",
    format="{temp:.0f}°c",
)


# The battery monitor has many formatting options, see README for details

# This would look like this, when discharging (or charging)
# ↓14.22W 56.15% [77.81%] 2h:41m
# And like this if full:
# =14.22W 100.0% [91.21%]
#
# This would also display a desktop notification (via D-Bus) if the percentage
# goes below 5 percent while discharging. The block will also color RED.
# If you don't have a desktop notification demon yet, take a look at dunst:
#   http://www.knopwob.org/dunst/
status.register(
    "battery",
    format="{status}/{consumption:.2f}W {percentage:.2f}% [{percentage_design:.2f}%] {remaining:%E%hh:%Mm}",
    alert=True,
    alert_percentage=5,
    status={
        "DIS": "🔋",
        "CHR": "⚡",
        "FULL": "💚",
    },
)

# status.register('openfiles')

# status.register('online')

# status.register(
#     "ping",
#     host="8.8.8.8",
# )

# status.register(
#     'openvpn',
#     format='ovpn {status}{vpn_name}',
#     vpn_name='disqus',
# )

# # Displays whether a DHCP client is running
# status.register(
#     "runwatch",
#     name="DHCP",
#     path="/var/run/dhclient*.pid",
# )

# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces
# status.register(
#     "network",
#     # interface="eth0",
#     format_up="{v4cidr}",
# )

# # Note: requires both netifaces and basiciw (for essid and quality)
# status.register(
#     "network",
#     interface="wlp4s0",
#     format_up="{essid}/{freq}",
# )

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register(
    "disk",
    path="/",
    format="rootfs {avail}g",
)

status.register(
    "disk",
    path="/dpool",
    format="dpool {avail}g",
)

# status.register(
#     "github",
#     format='{status}[ ({unread_count})][ {update_error}]',
#     access_token=keyring.get_password('https://api.github.com/?ro', ''),
#     notify_status=True,
#     notify_unread=True,
#     hints={'markup': 'pango'},
#     update_error='<span color="#af0000">!</span>',
#     refresh_icon='<span color="#ff5f00">⟳</span>',
#     status={
#         'good': '✓',
#         'minor': '!',
#         'major': '!!',
#     },
#     colors={
#         'good': '#008700',
#         'minor': '#d7ff00',
#         'major': '#af0000',
#     },
# )

# # Note: requires libpulseaudio from PyPI
# status.register(
#     "pulseaudio",
#     format="🎵 {muted} {db}db {volume_bar}",
# )

# # Shows mpd status
# # Format:
# status.register(
#     "mpd",
#     format="🎵  {title}{artist} {status}",
#     status={
#         "pause": ":pause:",
#         "play": ":play:",
#         "stop": ":stop:",
#     },
# )

# status.register(
#     "now_playing",
#     format="🎵  {title} - {artist} {song_elapsed}/{song_length} {status}",
#     status={
#         "pause": ":pause:",
#         "play": ":play:",
#         "stop": ":stop:",
#     },
# )

# # updates
# from i3pystatus.updates import aptget
# status.register(
#     "updates",
#     # format="Updates: {count}",
#     # format_no_updates="No updates",
#     backends=[
#         aptget.AptGet(),
#     ]
# )

# xkblayout
status.register(
    "xkblayout",
    uppercase=False,
)


# from i3pystatus.mail import thunderbird
# status.register("mail",
#     backends=[
#         thunderbird.Thunderbird(account="trevorjoyson@gmail.com"),
#         thunderbird.Thunderbird(account="trevor@disqus.com"),
#         thunderbird.Thunderbird(account="local"),
#     ],
#     format="P {unread}",
#     log_level=20,
#     hide_if_null=False,
# )

# from i3pystatus.weather import wunderground

# status.register(
#     'weather',
#     interval=900,
#     colorize=True,
#     hints=dict(markup='pango'),
#     format='{condition} {current_temp}{temp_unit}[ {icon}][ Hi: {high_temp}][ Lo: {low_temp}][ {update_error}]',
#     backend=wunderground.Wunderground(
#         location_code='autoip',
#         units='imperial',
#         forecast=True,
#         api_key=keyring.get_password('api.wunderground', getpass.getuser()),
#     ),
# )

status.register(
    "taskwarrior",
    hints=dict(markup='pango'),
    format='🍤 Task: {next} 🐲 {ready} ❗ {urgent}',
)

status.register(
    "timewarrior",
    hints=dict(markup='pango'),
)

# status.register(
#     "pomodoro",
#     sound=os.path.expanduser('~/Media/break.wav'),
# )

# status.register(
#     "syncthing",
#     hints=dict(markup='pango'),
#     # status=dict(
#     #     UP='😹',
#     #     DOWN='😠',
#     # ),
# )

# status.register(
#     "window_title",
#     format='{title} class={class_name}',
# )

# Finally
status.run()

"""
🔑 (key)
🎌 (crossed_flags)
🕥 (clock1030)
🐲 (dragon_face)
❔ (grey_question)
⬆  (arrow_up)
😹 (joy_cat)
😐 (neutral_face)
🌝 (full_moon_with_face)
🈳 (u7a7a)
🛂 (passport_control)
🍥 (fish_cake)
🍚 (rice)
👜 (handbag)
‼  (bangbang)
🎶 (notes)
🔠 (capital_abcd)
🔤 (abc)
⚪ (white_circle)
6  (six)
🅰  (a)
🅱  (b)
🍑 (peach)
Ⓜ  (m)
⭕ (o)
➖ (heavy_minus_sign)
↩  (leftwards_arrow_with_hook)
✌  (v)
❌ (x)
👕 (shirt)
🍇 (grapes)
🎍 (bamboo)
🏣 (post_office)
🚥 (traffic_light)
💎 (gem)
💦 (sweat_drops)
🃏 (black_joker)
🍤 (fried_shrimp)
🚴 (bicyclist)
🌓 (first_quarter_moon)
🚂 (steam_locomotive)
🚪 (door)
🚕 (taxi)
🏫 (school)
📓 (notebook)
📮 (postbox)
🔒 (lock)
👚 (womans_clothes)
🍌 (banana)
0  (zero)
🚙 (blue_car)
🎒 (school_satchel)
🍏 (green_apple)
♥  (hearts)
🏇 (horse_racing)
🚰 (potable_water)
🎄 (christmas_tree)
👰 (bride_with_veil)
🚶 (walking)
🎡 (ferris_wheel)
🌈 (rainbow)
🎿 (ski)
🍍 (pineapple)
😱 (scream)
➡  (arrow_right)
㊗ (congratulations)
👍 (+1)
🕐 (clock1)
🕑 (clock2)
🕒 (clock3)
🕓 (clock4)
🕔 (clock5)
🕕 (clock6)
🕖 (clock7)
🕗 (clock8)
🕘 (clock9)
🍊 (tangerine)
🌑 (new_moon)
📷 (camera)
🎣 (fishing_pole_and_fish)
🐉 (dragon)
🎠 (carousel_horse)
😼 (smirk_cat)
🔂 (repeat_one)
🎬 (clapper)
😑 (expressionless)
⏫ (arrow_double_up)
🐦 (bird)
🌰 (chestnut)
🚒 (fire_engine)
🚱 (non-potable_water)
⌛ (hourglass)
🔞 (underage)
👛 (purse)
📋 (clipboard)
🚀 (rocket)
🔽 (arrow_down_small)
🔐 (closed_lock_with_key)
😺 (smiley_cat)
🎪 (circus_tent)
✈  (airplane)
🎧 (headphones)
🐬 (flipper)
💛 (yellow_heart)
😩 (weary)
➗ (heavy_division_sign)
📙 (orange_book)
🎢 (roller_coaster)
🐌 (snail)
🌔 (waxing_gibbous_moon)
◾ (black_medium_small_square)
🐥 (hatched_chick)
🏉 (rugby_football)
💌 (love_letter)
🌘 (waning_crescent_moon)
😷 (mask)
🚏 (busstop)
🔌 (electric_plug)
🐊 (crocodile)
🐵 (monkey_face)
👎 (-1)
🌵 (cactus)
🔎 (mag_right)
💥 (collision)
⤵  (arrow_heading_down)
🎷 (saxophone)
🍻 (beers)
🗽 (statue_of_liberty)
8  (eight)
🔜 (soon)
🚷 (no_pedestrians)
🍶 (sake)
☑  (ballot_box_with_check)
🐴 (horse)
🏡 (house_with_garden)
📹 (video_camera)
♨  (hotsprings)
🐍 (snake)
📁 (file_folder)
🎏 (flags)
🎀 (ribbon)
〰 (wavy_dash)
💹 (chart)
🅿  (parking)
😨 (fearful)
🚬 (smoking)
⛲ (fountain)
🐁 (mouse2)
🆘 (sos)
🎈 (balloon)
🔢 (1234)
🛃 (customs)
👽 (alien)
⁉  (interrobang)
🌚 (new_moon_with_face)
1  (one)
❇  (sparkle)
🍩 (doughnut)
🎋 (tanabata_tree)
💴 (yen)
🗼 (tokyo_tower)
🐺 (wolf)
◽ (white_medium_small_square)
↕  (arrow_up_down)
♻  (recycle)
👝 (pouch)
😔 (pensive)
🚢 (ship)
🌍 (earth_africa)
⛽ (fuelpump)
🏆 (trophy)
🔨 (hammer)
🗻 (mount_fuji)
📻 (radio)
🍓 (strawberry)
👿 (imp)
🍖 (meat_on_bone)
🛀 (bath)
👸 (princess)
📬 (mailbox_with_mail)
⭐ (star)
🆚 (vs)
😚 (kissing_closed_eyes)
💯 (100)
💻 (computer)
🔧 (wrench)
👀 (eyes)
💠 (diamond_shape_with_a_dot_inside)
✖  (heavy_multiplication_x)
😿 (crying_cat_face)
📲 (calling)
🚫 (no_entry_sign)
📢 (loudspeaker)
👷 (construction_worker)
🔥 (fire)
💰 (moneybag)
🚎 (trolleybus)
💜 (purple_heart)
😳 (flushed)
🍐 (pear)
😲 (astonished)
☁  (cloud)
▫  (white_small_square)
📚 (books)
👥 (busts_in_silhouette)
❗ (exclamation)
😤 (triumph)
📤 (outbox_tray)
🔼 (arrow_up_small)
😋 (yum)
💵 (dollar)
🍭 (lollipop)
🍟 (fries)
4  (four)
🔦 (flashlight)
🍯 (honey_pot)
🐰 (rabbit)
💨 (dash)
🐟 (fish)
🚧 (construction)
🚼 (baby_symbol)
💢 (anger)
✊ (fist)
🔚 (end)
🔖 (bookmark)
😍 (heart_eyes)
🚃 (railway_car)
🐩 (poodle)
👎 (thumbsdown)
🚺 (womens)
⬜ (white_large_square)
👵 (older_woman)
♿ (wheelchair)
💝 (gift_heart)
🔕 (no_bell)
🚞 (mountain_railway)
🍞 (bread)
💘 (cupid)
📅 (date)
🙍 (person_frowning)
🚚 (truck)
🕣 (clock830)
👯 (dancers)
✋ (hand)
😉 (wink)
👖 (jeans)
🚗 (red_car)
🚮 (put_litter_in_its_place)
🏭 (factory)
🔅 (low_brightness)
🐣 (hatching_chick)
🚭 (no_smoking)
🐧 (penguin)
🐐 (goat)
😌 (relieved)
🎃 (jack_o_lantern)
⬛ (black_large_square)
🎸 (guitar)
🐜 (ant)
🕡 (clock630)
🔳 (white_square_button)
♋ (cancer)
🏀 (basketball)
🍢 (oden)
🈸 (u7533)
👮 (cop)
㊙ (secret)
🍲 (stew)
🐮 (cow)
🍉 (watermelon)
💔 (broken_heart)
🌐 (globe_with_meridians)
🌉 (bridge_at_night)
🌒 (waxing_crescent_moon)
✏  (pencil2)
👙 (bikini)
🚐 (minibus)
🐏 (ram)
🐀 (rat)
📌 (pushpin)
🎭 (performing_arts)
🕟 (clock430)
📇 (card_index)
🆓 (free)
🔁 (repeat)
🉐 (ideograph_advantage)
💒 (wedding)
⏬ (arrow_double_down)
◼  (black_medium_square)
5  (five)
🐖 (pig2)
🌂 (closed_umbrella)
🚖 (oncoming_taxi)
📯 (postal_horn)
➿ (loop)
🔭 (telescope)
🚿 (shower)
👞 (mans_shoe)
😦 (frowning)
🌕 (full_moon)
📜 (scroll)
🔵 (large_blue_circle)
🕝 (clock230)
🔩 (nut_and_bolt)
🌿 (herb)
💧 (droplet)
◀  (arrow_backward)
🚆 (train2)
🎺 (trumpet)
🚉 (station)
✉  (email)
🔗 (link)
↗  (arrow_upper_right)
😞 (disappointed)
💀 (skull)
😅 (sweat_smile)
🎳 (bowling)
🉑 (accept)
☀  (sunny)
⏪ (rewind)
🎂 (birthday)
🔺 (small_red_triangle)
💳 (credit_card)
🐅 (tiger2)
🚔 (oncoming_police_car)
😢 (cry)
🌻 (sunflower)
🚳 (no_bicycles)
〽 (part_alternation_mark)
🈺 (u55b6)
🚈 (light_rail)
🈲 (u7981)
🔊 (speaker)
👠 (high_heel)
❤  (heart)
♈ (aries)
🍵 (tea)
😯 (hushed)
☔ (umbrella)
👪 (family)
🚯 (do_not_litter)
🎨 (art)
🔘 (radio_button)
🐋 (whale2)
😘 (kissing_heart)
🎇 (sparkler)
✨ (sparkles)
☝  (point_up)
#  (hash)
😥 (disappointed_relieved)
🍮 (custard)
♉ (taurus)
🏦 (bank)
⛔ (no_entry)
🍬 (candy)
👄 (lips)
🔫 (gun)
🏃 (running)
🎤 (microphone)
👳 (man_with_turban)
🔹 (small_blue_diamond)
♑ (capricorn)
😧 (anguished)
🌜 (last_quarter_moon_with_face)
🈵 (u6e80)
🍘 (rice_cracker)
♊ (gemini)
📠 (fax)
👲 (man_with_gua_pi_mao)
🏄 (surfer)
9  (nine)
🌽 (corn)
😵 (dizzy_face)
🔄 (arrows_counterclockwise)
👅 (tongue)
🛄 (baggage_claim)
🏧 (atm)
♠  (spades)
🎦 (cinema)
✒  (black_nib)
💿 (cd)
💣 (bomb)
💷 (pound)
🆑 (cl)
🇨🇳 (cn)
🚠 (mountain_cableway)
📝 (pencil)
📼 (vhs)
❎ (negative_squared_cross_mark)
⬅  (arrow_left)
🌊 (ocean)
🆕 (new)
😶 (no_mouth)
📞 (telephone_receiver)
🐠 (tropical_fish)
🐭 (mouse)
💈 (barber)
🐼 (panda_face)
🍹 (tropical_drink)
😣 (persevere)
💊 (pill)
👊 (facepunch)
💏 (couplekiss)
⬇  (arrow_down)
👹 (japanese_ogre)
♌ (leo)
🌛 (first_quarter_moon_with_face)
🇩🇪 (de)
🍁 (maple_leaf)
3  (three)
🎁 (gift)
🎯 (dart)
🕦 (clock1130)
🐒 (monkey)
➕ (heavy_plus_sign)
😮 (open_mouth)
🏂 (snowboarder)
📛 (name_badge)
📦 (package)
💭 (thought_balloon)
💩 (poop)
🎲 (game_die)
🆒 (cool)
🍛 (curry)
⚾ (baseball)
🌏 (earth_asia)
🌆 (city_sunset)
🎻 (violin)
🏁 (checkered_flag)
⛎ (ophiuchus)
🚁 (helicopter)
😡 (rage)
🚡 (aerial_tramway)
🎉 (tada)
🎥 (movie_camera)
🌖 (waning_gibbous_moon)
🇪🇸 (es)
❕ (grey_exclamation)
👃 (nose)
🏩 (love_hotel)
♒ (aquarius)
🔪 (hocho)
®  (registered)
🙆 (ok_woman)
🚝 (monorail)
😕 (confused)
💚 (green_heart)
🍜 (ramen)
♎ (libra)
🕙 (clock10)
🕚 (clock11)
🕛 (clock12)
🍰 (cake)
💫 (dizzy)
💩 (shit)
🎩 (tophat)
👑 (crown)
👻 (ghost)
🇫🇷 (fr)
🔬 (microscope)
💉 (syringe)
⚡ (zap)
🙋 (raising_hand)
🐷 (pig)
♓ (pisces)
🐇 (rabbit2)
🌟 (star2)
🆎 (ab)
♦  (diamonds)
🔴 (red_circle)
🎎 (dolls)
💅 (nail_care)
🐤 (baby_chick)
📖 (open_book)
📑 (bookmark_tabs)
🎰 (slot_machine)
🍸 (cocktail)
🔸 (small_orange_diamond)
➰ (curly_loop)
🇬🇧 (gb)
👒 (womans_hat)
🌇 (city_sunrise)
🌃 (stars)
🙀 (scream_cat)
😄 (smile)
👋 (wave)
🌼 (blossom)
🍄 (mushroom)
😬 (grimacing)
🌌 (milky_way)
⛳ (golf)
©  (copyright)
🚇 (metro)
🎮 (video_game)
🐔 (chicken)
📍 (round_pushpin)
😃 (smiley)
🐝 (bee)
🍈 (melon)
💼 (briefcase)
🐸 (frog)
📝 (memo)
😜 (stuck_out_tongue_winking_eye)
🎼 (musical_score)
🏮 (lantern)
🌄 (sunrise_over_mountains)
💶 (euro)
😠 (angry)
⏳ (hourglass_flowing_sand)
📧 (e-mail)
🍨 (ice_cream)
🎴 (flower_playing_cards)
🍼 (baby_bottle)
🎑 (rice_scene)
📭 (mailbox_with_no_mail)
✋ (raised_hand)
🍱 (bento)
🎊 (confetti_ball)
👌 (ok_hand)
💍 (ring)
📴 (mobile_phone_off)
🛁 (bathtub)
🍷 (wine_glass)
🆔 (id)
🚵 (mountain_bicyclist)
💟 (heart_decoration)
🔆 (high_brightness)
🍔 (hamburger)
🇮🇹 (it)
🐗 (boar)
⛵ (boat)
🍳 (egg)
🏠 (house)
😙 (kissing_smiling_eyes)
💓 (heartbeat)
👕 (tshirt)
🚜 (tractor)
🙊 (speak_no_evil)
🎹 (musical_keyboard)
🙏 (pray)
📘 (blue_book)
✅ (white_check_mark)
👼 (angel)
🐾 (paw_prints)
🚃 (train)
🐯 (tiger)
🐳 (whale)
🐘 (elephant)
🐓 (rooster)
🚓 (police_car)
🌲 (evergreen_tree)
🔋 (battery)
🌷 (tulip)
⛅ (partly_sunny)
🙉 (hear_no_evil)
💪 (muscle)
🔝 (top)
📪 (mailbox_closed)
↖  (arrow_upper_left)
💁 (information_desk_person)
🐙 (octopus)
👐 (open_hands)
⏰ (alarm_clock)
🇰🇷 (kr)
🙎 (person_with_pouting_face)
🔯 (six_pointed_star)
🌾 (ear_of_rice)
💙 (blue_heart)
📊 (bar_chart)
🍃 (leaves)
💮 (white_flower)
🌹 (rose)
💞 (revolving_hearts)
♐ (sagittarius)
📆 (calendar)
⚽ (soccer)
📂 (open_file_folder)
👞 (shoe)
☕ (coffee)
🈴 (u5408)
💇 (haircut)
🎆 (fireworks)
🍣 (sushi)
🔷 (large_blue_diamond)
🐄 (cow2)
👏 (clap)
🚸 (children_crossing)
🈷 (u6708)
🈶 (u6709)
😛 (stuck_out_tongue)
🌞 (sun_with_face)
💆 (massage)
🏬 (department_store)
👉 (point_right)
⤴  (arrow_heading_up)
🚅 (bullettrain_front)
👬 (two_men_holding_hands)
🏥 (hospital)
🍝 (spaghetti)
🍋 (lemon)
✂  (scissors)
😎 (sunglasses)
😆 (laughing)
🔉 (sound)
🌱 (seedling)
🈁 (koko)
🍪 (cookie)
▶  (arrow_forward)
📏 (straight_ruler)
🐻 (bear)
🍆 (eggplant)
💾 (floppy_disk)
🏃 (runner)
😏 (smirk)
🌁 (foggy)
🚩 (triangular_flag_on_post)
😓 (sweat)
💬 (speech_balloon)
⛺ (tent)
🌅 (sunrise)
🎐 (wind_chime)
🈯 (u6307)
🔏 (lock_with_ink_pen)
🍅 (tomato)
♣  (clubs)
🌳 (deciduous_tree)
🆖 (ng)
🔻 (small_red_triangle_down)
👓 (eyeglasses)
🏪 (convenience_store)
🐈 (cat2)
🚤 (speedboat)
☺  (relaxed)
↘  (arrow_lower_right)
🐑 (sheep)
🚻 (restroom)
🅾  (o2)
💂 (guardsman)
🏈 (football)
🔡 (abcd)
🐨 (koala)
🔱 (trident)
🚍 (oncoming_bus)
☎  (phone)
😰 (cold_sweat)
😂 (joy)
👱 (person_with_blond_hair)
🎅 (santa)
📕 (closed_book)
🏯 (japanese_castle)
🆗 (ok)
🔛 (on)
🐂 (ox)
🍫 (chocolate_bar)
⌚ (watch)
💩 (hankey)
↙  (arrow_lower_left)
⛄ (snowman)
💑 (couple_with_heart)
😀 (grinning)
😊 (blush)
👶 (baby)
🚊 (tram)
📣 (mega)
🎓 (mortar_board)
◻  (white_medium_square)
👧 (girl)
🔀 (twisted_rightwards_arrows)
🏨 (hotel)
🐪 (dromedary_camel)
🐎 (racehorse)
🕤 (clock930)
👢 (boot)
👡 (sandal)
👈 (point_left)
📱 (iphone)
😗 (kissing)
✔  (heavy_check_mark)
🍒 (cherries)
🔙 (back)
🏰 (european_castle)
🐾 (feet)
🀄 (mahjong)
7  (seven)
🕢 (clock730)
🏊 (swimmer)
👭 (two_women_holding_hands)
🐶 (dog)
🐽 (pig_nose)
✉  (envelope)
🍺 (beer)
🌸 (cherry_blossom)
🎱 (8ball)
📰 (newspaper)
⚫ (black_circle)
🏢 (office)
😸 (smile_cat)
♍ (virgo)
💽 (minidisc)
💃 (dancer)
👩 (woman)
🕠 (clock530)
🐕 (dog2)
🚽 (toilet)
👤 (bust_in_silhouette)
👾 (space_invader)
👫 (couple)
👺 (japanese_goblin)
🙇 (bow)
👦 (boy)
🌙 (crescent_moon)
🙌 (raised_hands)
😈 (smiling_imp)
💲 (heavy_dollar_sign)
🇷🇺 (ru)
📶 (signal_strength)
😫 (tired_face)
👆 (point_up_2)
📃 (page_with_curl)
📟 (pager)
🕞 (clock330)
🇯🇵 (jp)
🍙 (rice_ball)
🔃 (arrows_clockwise)
🔮 (crystal_ball)
👔 (necktie)
👍 (thumbsup)
🚘 (oncoming_automobile)
👇 (point_down)
▪  (black_small_square)
📈 (chart_with_upwards_trend)
📔 (notebook_with_decorative_cover)
2  (two)
🐡 (blowfish)
🈂 (sa)
✴  (eight_pointed_black_star)
💱 (currency_exchange)
🚗 (car)
🕜 (clock130)
🚛 (articulated_lorry)
🐆 (leopard)
💺 (seat)
🎽 (running_shirt_with_sash)
🚦 (vertical_traffic_light)
🈹 (u5272)
🚑 (ambulance)
🍡 (dango)
📉 (chart_with_downwards_trend)
🐬 (dolphin)
📗 (green_book)
📨 (incoming_envelope)
☎  (telephone)
🍦 (icecream)
💤 (zzz)
♏ (scorpius)
🔲 (black_square_button)
🔍 (mag)
🎫 (ticket)
👨 (man)
🌔 (moon)
🌗 (last_quarter_moon)
🎾 (tennis)
📡 (satellite)
™  (tm)
🌋 (volcano)
🐃 (water_buffalo)
📺 (tv)
🐹 (hamster)
🌴 (palm_tree)
😪 (sleepy)
↔  (left_right_arrow)
👣 (footprints)
👘 (kimono)
📥 (inbox_tray)
📫 (mailbox)
📳 (vibration_mode)
⚠  (warning)
😴 (sleeping)
👗 (dress)
🔟 (keycap_ten)
😆 (satisfied)
😟 (worried)
👴 (older_man)
🚣 (rowboat)
🔰 (beginner)
🇬🇧 (uk)
🆙 (up)
🇺🇸 (us)
⚓ (anchor)
❄  (snowflake)
🐚 (shell)
🚲 (bike)
😽 (kissing_cat)
❓ (question)
💕 (two_hearts)
🍴 (fork_and_knife)
📒 (ledger)
😇 (innocent)
ℹ  (information_source)
✳  (eight_spoked_asterisk)
😾 (pouting_cat)
🗾 (japan)
💖 (sparkling_heart)
🍎 (apple)
💗 (heartpulse)
😻 (heart_eyes_cat)
🛅 (left_luggage)
🚄 (bullettrain_side)
🍗 (poultry_leg)
😒 (unamused)
🍀 (four_leaf_clover)
🚨 (rotating_light)
👟 (athletic_shoe)
🌺 (hibiscus)
🔇 (mute)
🏤 (european_post_office)
📩 (envelope_with_arrow)
🔣 (symbols)
📄 (page_facing_up)
🚹 (mens)
👂 (ear)
🚾 (wc)
🙅 (no_good)
🐫 (camel)
🍠 (sweet_potato)
🍧 (shaved_ice)
🙈 (see_no_evil)
🐞 (beetle)
📖 (book)
💥 (boom)
📵 (no_mobile_phones)
💋 (kiss)
↪  (arrow_right_hook)
🌀 (cyclone)
💄 (lipstick)
⏩ (fast_forward)
❗ (heavy_exclamation_mark)
🏮 (izakaya_lantern)
🍂 (fallen_leaf)
🐝 (honeybee)
💡 (bulb)
😖 (confounded)
🐛 (bug)
🐱 (cat)
😁 (grin)
🚌 (bus)
⛵ (sailboat)
📀 (dvd)
🔶 (large_orange_diamond)
🕧 (clock1230)
🔔 (bell)
🍕 (pizza)
🌎 (earth_americas)
📎 (paperclip)
🚟 (suspension_railway)
📐 (triangular_ruler)
💐 (bouquet)
💸 (money_with_wings)
😝 (stuck_out_tongue_closed_eyes)
⛪ (church)
👊 (punch)
🐢 (turtle)
🗿 (moyai)
😭 (sob)
🔓 (unlock)
🈚 (u7121)
🎵 (musical_note)
"""
