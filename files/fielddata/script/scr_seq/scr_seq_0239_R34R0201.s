#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_R34R0201.h"
#include "msgdata/msg/msg_0386_R34R0201.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_R34R0201_000
	scrdef scr_seq_R34R0201_001
	scrdef scr_seq_R34R0201_002
	scrdef_end

scr_seq_R34R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_083, _0055
	npc_msg msg_0386_R34R0201_00000
	scrcmd_049
	goto_if_no_item_space ITEM_TM12, 1, _0060
	callstd std_give_item_verbose
	setflag FLAG_UNK_083
	goto _0055

_0055:
	npc_msg msg_0386_R34R0201_00002
	waitbutton
	closemsg
	releaseall
	end

_0060:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

scr_seq_R34R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_BUTTERFREE, 0
	npc_msg msg_0386_R34R0201_00003
	wait_cry
	waitbutton
	closemsg
	releaseall
	end

scr_seq_R34R0201_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0386_R34R0201_00004
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
