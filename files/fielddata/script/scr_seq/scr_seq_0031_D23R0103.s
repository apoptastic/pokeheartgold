#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_D23R0103.h"
#include "msgdata/msg/msg_0067_D23R0103.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_D23R0103_000
	scrdef scr_seq_D23R0103_001
	scrdef scr_seq_D23R0103_002
	scrdef scr_seq_D23R0103_003
	scrdef scr_seq_D23R0103_004
	scrdef scr_seq_D23R0103_005
	scrdef scr_seq_D23R0103_006
	scrdef scr_seq_D23R0103_007
	scrdef_end

scr_seq_D23R0103_000:
	setflag FLAG_UNK_1B7
	setflag FLAG_UNK_1B8
	compare VAR_UNK_4077, 4
	goto_if_ne _0041
	clearflag FLAG_UNK_1B7
	goto _0052

_0041:
	compare VAR_UNK_4077, 5
	goto_if_ne _0052
	clearflag FLAG_UNK_1B8
_0052:
	end

scr_seq_D23R0103_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0067_D23R0103_00015
	waitbutton
	closemsg
	releaseall
	end

scr_seq_D23R0103_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0067_D23R0103_00016
	waitbutton
	closemsg
	releaseall
	end

scr_seq_D23R0103_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4077, 4
	goto_if_ne _0098
	npc_msg msg_0067_D23R0103_00001
	goto _009B

_0098:
	npc_msg msg_0067_D23R0103_00002
_009B:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_D23R0103_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0067_D23R0103_00000
	waitbutton
	closemsg
	releaseall
	end

scr_seq_D23R0103_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4077, 4
	goto_if_ne _00E7
	getitemquantity ITEM_BASEMENT_KEY, VAR_SPECIAL_x800C
	compare VAR_SPECIAL_x800C, 0
	goto_if_ne _00F5
	npc_msg msg_0067_D23R0103_00003
	goto _00ED

_00E7:
	goto _0100

_00ED:
	waitbutton
	closemsg
	releaseall
	end

_00F5:
	npc_msg msg_0067_D23R0103_00004
	waitbutton
	closemsg
	releaseall
	end

_0100:
	goto_if_set FLAG_UNK_08F, _014D
	npc_msg msg_0067_D23R0103_00005
	goto_if_no_item_space ITEM_TM11, 1, _0142
	callstd std_give_item_verbose
	npc_msg msg_0067_D23R0103_00007
	waitbutton
	closemsg
	releaseall
	setflag FLAG_UNK_08F
	end

_0142:
	npc_msg msg_0067_D23R0103_00008
	waitbutton
	closemsg
	releaseall
	end

_014D:
	npc_msg msg_0067_D23R0103_00009
	waitbutton
	closemsg
	releaseall
	end

scr_seq_D23R0103_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity ITEM_CARD_KEY, VAR_SPECIAL_x800C
	compare VAR_SPECIAL_x800C, 0
	goto_if_ne _01B4
	npc_msg msg_0067_D23R0103_00010
	waitbutton
	closemsg
	releaseall
	end

scr_seq_D23R0103_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_090, _01E2
	npc_msg msg_0067_D23R0103_00011
	closemsg
	getitemquantity ITEM_CARD_KEY, VAR_SPECIAL_x800C
	compare VAR_SPECIAL_x800C, 0
	goto_if_ne _01B4
	npc_msg msg_0067_D23R0103_00013
	waitbutton
	closemsg
	releaseall
	end

_01B4:
	buffer_players_name 0
	npc_msg msg_0067_D23R0103_00012
	closemsg
	apply_movement obj_D23R0103_babyboy1_9, _01F0
	apply_movement obj_D23R0103_babyboy1_9_2, _01F8
	wait_movement
	releaseall
	setflag FLAG_UNK_1BF
	hide_person obj_D23R0103_babyboy1_9
	hide_person obj_D23R0103_babyboy1_9_2
	setflag FLAG_UNK_090
	end

_01E2:
	npc_msg msg_0067_D23R0103_00014
	waitbutton
	closemsg
	releaseall
	end
	.byte 0x00, 0x00, 0x00

_01F0:
	step 14, 2
	step_end

_01F8:
	step 15, 2
	step_end
	.balign 4, 0
