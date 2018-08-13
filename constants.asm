; hKeysHeld, hKeysPressed
A_BUTTON EQU %00000001
B_BUTTON EQU %00000010
SELECT   EQU %00000100
START    EQU %00001000
D_RIGHT  EQU %00010000
D_LEFT   EQU %00100000
D_UP     EQU %01000000
D_DOWN   EQU %10000000

A_BUTTON_BIT EQU 0
B_BUTTON_BIT EQU 1
SELECT_BIT   EQU 2
START_BIT    EQU 3
D_RIGHT_BIT  EQU 4
D_LEFT_BIT   EQU 5
D_UP_BIT     EQU 6
D_DOWN_BIT   EQU 7

; hGameState
STATE_05                            EQU 5
STATE_LOAD_TITLESCREEN              EQU 6
STATE_TITLESCREEN                   EQU 7
STATE_LOAD_MODE_SELECT              EQU 8
STATE_09                            EQU 9
STATE_10                            EQU 10
STATE_MODE_SELECT                   EQU 14
STATE_MUSIC_SELECT                  EQU 15
STATE_LOAD_TYPE_A_MENU              EQU 16
STATE_TYPE_A_MENU                   EQU 17
STATE_LOAD_TYPE_B_MENU              EQU 18
STATE_TYPE_B_LEVEL_SELECT           EQU 19
STATE_TYPE_B_HIGH_SELECT            EQU 20
STATE_HIGHSCORE_ENTER_NAME          EQU 21
STATE_22                            EQU 22
STATE_24                            EQU 24
STATE_26                            EQU 26
STATE_34                            EQU 34
STATE_35                            EQU 35
STATE_LOAD_COPYRIGHT                EQU 36
STATE_COPYRIGHT                     EQU 37
STATE_LOAD_MULTIPLAYER_MUSIC_SELECT EQU 42
STATE_43                            EQU 43
STATE_MORE_COPYRIGHT                EQU 53 ; INTERNATIONAL only

; hMasterSlave
SERIAL_MASTER EQU $29
SERIAL_SLAVE  EQU $55

SERIAL_MUSIC_ACK  EQU $39
SERIAL_MUSIC_DONE EQU $50

; hSerialState
SERIAL_STATE_TITLESCREEN EQU 0
SERIAL_STATE_1           EQU 1
SERIAL_STATE_2           EQU 2
SERIAL_STATE_3           EQU 3

; wPlaySong, wCurSong
SONG_HIGHSCORE      EQU 1
SONG_B_END_JINGLE   EQU 2
SONG_TITLESCREEN    EQU 3
SONG_A_END_JINGLE   EQU 4
SONG_A              EQU 5
SONG_B              EQU 6
SONG_C              EQU 7
SONG_TENSE          EQU 8
SONG_MULTIPLAYER_JIGNLE EQU 9
SONG_STOP EQU $ff

; wPlaySFX, wCurSFX
SFX_CURSOR_BEEP  EQU 1
SFX_CONFIRM_BEEP EQU 2

; wSpriteList
SPRITE_SIZE      EQU 16
SPRITE_INFO_SIZE EQU 7 ; the 9 bytes is padding
SPRITE_OFFSET_VISIBILITY EQU 0
SPRITE_OFFSET_Y          EQU 1
SPRITE_OFFSET_X          EQU 2
SPRITE_OFFSET_ID         EQU 3
SPRITE_OFFSET_BELOW_BG   EQU 4
SPRITE_OFFSET_FLIP       EQU 5
SPRITE_OFFSET_FLAGS      EQU 6
;  offset 0
SPRITE_HIDDEN  EQU $80
SPRITE_VISIBLE EQU $00
;  offset 3
SPRITE_L0      EQU $00
SPRITE_L1      EQU $01
SPRITE_L2      EQU $02
SPRITE_L3      EQU $03
SPRITE_TYPE_A  EQU $1c
SPRITE_TYPE_B  EQU $1d
SPRITE_TYPE_C  EQU $1e
SPRITE_OFF     EQU $1f
SPRITE_DIGIT_0 EQU $20

; hGameType
GAME_TYPE_A EQU $37
GAME_TYPE_B EQU $77

; hMusicType
MUSIC_TYPE_A EQU SPRITE_TYPE_A
MUSIC_TYPE_B EQU SPRITE_TYPE_B
MUSIC_TYPE_C EQU SPRITE_TYPE_C
MUSIC_OFF    EQU SPRITE_OFF

TYPE_A_LEVEL_COUNT EQU 10
TYPE_B_LEVEL_COUNT EQU 10
TYPE_B_HIGH_COUNT  EQU 6
SCORE_SIZE  EQU 3
HIGHSCORE_ENTRY_COUNT EQU 3
HIGHSCORE_NAME_LENGTH EQU 6
HIGHSCORE_ENTRY_SIZE  EQU HIGHSCORE_NAME_LENGTH + SCORE_SIZE
