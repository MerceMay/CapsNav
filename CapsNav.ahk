#Requires AutoHotkey v2.0
#SingleInstance Force

; CapsLock 单独按下松开 → 切换大写锁定
; CapsLock 组合键 → 导航/选中，不触发大写切换

; ── 全屏检测：进游戏自动暂停，退出自动恢复 ────────
SetTimer CheckFullscreen, 2000

CheckFullscreen() {
    try {
        hwnd := WinGetID("A")
        WinGetPos(&x, &y, &w, &h, "ahk_id " hwnd)
        isFullscreen := (x = 0 && y = 0 && w = A_ScreenWidth && h = A_ScreenHeight)
        Suspend(isFullscreen ? 1 : 0)
    }
}

capsUsed := false

*CapsLock:: {
    global capsUsed
    capsUsed := false
    KeyWait "CapsLock"
    if !capsUsed
        SetCapsLockState GetKeyState("CapsLock", "T") ? "Off" : "On"
}

_use() {
    global capsUsed := true
}

#HotIf GetKeyState("CapsLock", "P")

; ── 移动 ──────────────────────────────────────────
e:: (_use(), Send("{Up}"))
s:: (_use(), Send("{Left}"))
d:: (_use(), Send("{Down}"))
f:: (_use(), Send("{Right}"))
a:: (_use(), Send("^{Left}"))   ; 按词向左
g:: (_use(), Send("^{Right}"))  ; 按词向右
w:: (_use(), Send("{Home}"))    ; 行首
r:: (_use(), Send("{End}"))     ; 行尾

; ── 选中（Caps + Shift + 同键）────────────────────
+e:: (_use(), Send("+{Up}"))
+s:: (_use(), Send("+{Left}"))
+d:: (_use(), Send("+{Down}"))
+f:: (_use(), Send("+{Right}"))
+a:: (_use(), Send("^+{Left}"))  ; 按词向左选中
+g:: (_use(), Send("^+{Right}")) ; 按词向右选中
+w:: (_use(), Send("+{Home}"))   ; 选到行首
+r:: (_use(), Send("+{End}"))    ; 选到行尾

#HotIf
