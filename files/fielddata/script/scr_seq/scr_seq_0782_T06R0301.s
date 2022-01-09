#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T06R0301.h"
#include "msgdata/msg/msg_0488_T06R0301.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T06R0301_000
	scrdef scr_seq_T06R0301_001
	scrdef scr_seq_T06R0301_002
	scrdef scr_seq_T06R0301_003
	scrdef scr_seq_T06R0301_004
	scrdef scr_seq_T06R0301_005
	scrdef scr_seq_T06R0301_006
	scrdef scr_seq_T06R0301_007
	scrdef_end

scr_seq_T06R0301_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_UNK_0F8, _0044
	buffer_players_name 0
	gender_msgbox msg_0488_T06R0301_00004, msg_0488_T06R0301_00005
	waitbutton
	closemsg
	releaseall
	end

_0044:
	npc_msg msg_0488_T06R0301_00000
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	compare VAR_SPECIAL_x800C, 1
	goto_if_eq _009E
	npc_msg msg_0488_T06R0301_00001
	goto_if_no_item_space ITEM_RARE_CANDY, 1, _0093
	callstd std_give_item_verbose
	setflag FLAG_UNK_0F8
	npc_msg msg_0488_T06R0301_00003
	waitbutton
	closemsg
	releaseall
	end

_0093:
	npc_msg msg_0488_T06R0301_00007
	waitbutton
	closemsg
	releaseall
	end

_009E:
	npc_msg msg_0488_T06R0301_00006
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T06R0301_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0488_T06R0301_00008
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T06R0301_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity ITEM_LOST_ITEM, VAR_SPECIAL_x800C
	compare VAR_SPECIAL_x800C, 0
	goto_if_ne _0141
	getitemquantity ITEM_PASS, VAR_SPECIAL_x800C
	compare VAR_SPECIAL_x800C, 0
	goto_if_ne _0141
	goto_if_set FLAG_UNK_119, _0116
	goto_if_set FLAG_RESTORED_POWER, _010B
	npc_msg msg_0488_T06R0301_00009
	waitbutton
	closemsg
	releaseall
	end

_010B:
	npc_msg msg_0488_T06R0301_00010
	waitbutton
	closemsg
	releaseall
	end

_0116:
	npc_msg msg_0488_T06R0301_00011
	hide_person obj_T06R0301_mono_pip
	setflag FLAG_HIDE_VERMILION_FAN_CLUB_LOST_ITEM
	giveitem_no_check ITEM_LOST_ITEM, 1
	setvar VAR_UNK_4130, 1
	clearflag FLAG_HIDE_VERMILION_CITY_STEVEN
	closemsg
	releaseall
	end

_0141:
	npc_msg msg_0488_T06R0301_00013
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T06R0301_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0488_T06R0301_00014
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T06R0301_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_BAYLEEF, 0
	npc_msg msg_0488_T06R0301_00016
	wait_cry
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T06R0301_007:
	goto_if_set FLAG_HIDE_VERMILION_FAN_CLUB_LOST_ITEM, _0198
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0488_T06R0301_00015
	waitbutton
	closemsg
	releaseall
	end

_0198:
	end

scr_seq_T06R0301_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0488_T06R0301_00017
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T06R0301_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0488_T06R0301_00018
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
