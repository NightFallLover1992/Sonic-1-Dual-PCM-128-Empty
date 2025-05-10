; ===========================================================================
; ---------------------------------------------------------------------------
; Sample 68k PCM list
; ---------------------------------------------------------------------------
 
SampleList:        dc.l    StopSample            ; 80 (THIS IS A REST NOTE, DO NOT EDIT...)
            dc.l    Sonic1Kick            ; 81
            dc.l    Sonic1Snare            ; 82
            dc.l    Sonic1TimpaniLow        ; 83
            dc.l    StopSample            ; 84
            dc.l    StopSample            ; 85
            dc.l    StopSample            ; 86
            dc.l    StopSample            ; 87
            dc.l    Sonic1TimpaniHigh        ; 88
            dc.l    Sonic1TimpaniMid        ; 89
            dc.l    Sonic1TimpaniLow        ; 8A
            dc.l    Sonic1TimpaniLower        ; 8B
 
; ---------------------------------------------------------------------------
; Sample z80 pointers
; ---------------------------------------------------------------------------
 
StopSample:        dcz80    SWF_StopSample
Sonic1Kick:        dcz80    SWF_S1Kick
Sonic1Snare:        dcz80    SWF_S1Snare
Sonic1TimpaniHigh:    dcz80    SWF_S1TimpaniHigh
Sonic1TimpaniMid:    dcz80    SWF_S1TimpaniMid
Sonic1TimpaniLow:    dcz80    SWF_S1TimpaniLow
Sonic1TimpaniLower:    dcz80    SWF_S1TimpaniLower
 
; ---------------------------------------------------------------------------
; Sample file includes
; ---------------------------------------------------------------------------
            align    $20,$FF
SWF_StopSample:        dcb.b    $7FFF,$00
            dc.b    $80
; ---------------------------------------------------------------------------
SWF_S1Kick:        incbin    "Dual PCM\Samples\incswf\Sonic 1 Kick.swf"
SWF_S1Snare:        incbin    "Dual PCM\Samples\incswf\Sonic 1 Snare.swf"
SWF_S1TimpaniHigh:    incbin    "Dual PCM\Samples\incswf\Sonic 1 Timpani High.swf"
SWF_S1TimpaniMid:    incbin    "Dual PCM\Samples\incswf\Sonic 1 Timpani Mid.swf"
SWF_S1TimpaniLow:    incbin    "Dual PCM\Samples\incswf\Sonic 1 Timpani Low.swf"
SWF_S1TimpaniLower:    incbin    "Dual PCM\Samples\incswf\Sonic 1 Timpani Lower.swf"
 
; ===========================================================================