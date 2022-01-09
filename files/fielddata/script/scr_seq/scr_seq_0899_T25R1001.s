#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T25R1001.h"
#include "msgdata/msg/msg_0592_T25R1001.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T25R1001_000
	scrdef scr_seq_T25R1001_001
	scrdef scr_seq_T25R1001_002
	scrdef scr_seq_T25R1001_003
	scrdef scr_seq_T25R1001_004
	scrdef_end

scr_seq_T25R1001_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0592_T25R1001_00000
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T25R1001_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4077, 3
	goto_if_ne _0047
	npc_msg msg_0592_T25R1001_00002
	goto _004A

_0047:
	npc_msg msg_0592_T25R1001_00001
_004A:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T25R1001_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4077, 3
	goto_if_ne _0070
	npc_msg msg_0592_T25R1001_00004
	goto _0073

_0070:
	npc_msg msg_0592_T25R1001_00003
_0073:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T25R1001_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4077, 3
	goto_if_ne _0099
	npc_msg msg_0592_T25R1001_00006
	goto _009C

_0099:
	npc_msg msg_0592_T25R1001_00005
_009C:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T25R1001_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg msg_0592_T25R1001_00007
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
