#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T28R0201.h"
#include "msgdata/msg/msg_0625_T28R0201.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T28R0201_000
	scrdef scr_seq_T28R0201_001
	scrdef_end

scr_seq_T28R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0625_T28R0201_00000
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T28R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0C6, _003B
	goto_if_set FLAG_UNK_0C5, _0046
_003B:
	npc_msg msg_0625_T28R0201_00001
	waitbutton
	closemsg
	releaseall
	end

_0046:
	npc_msg msg_0625_T28R0201_00002
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
