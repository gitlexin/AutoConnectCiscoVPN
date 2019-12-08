set vpn_host to "** your vpn host **"
set vpn_username to "** your username **"
set vpn_password to "** your password **"

tell application "Cisco AnyConnect Secure Mobility Client"
    activate
end tell
repeat until application "Cisco AnyConnect Secure Mobility Client" is running
    delay 1
end repeat
tell application "System Events"
    repeat until (window 1 of process "Cisco AnyConnect Secure Mobility Client" exists)
        delay 1
    end repeat
    tell process "Cisco AnyConnect Secure Mobility Client"
        set value of combo box 1 of window 1 to vpn_host
        keystroke return
    end tell
    
    repeat until (window 2 of process "Cisco AnyConnect Secure Mobility Client" exists)
        delay 1
    end repeat
    
    tell process "Cisco AnyConnect Secure Mobility Client"
        set value of text field 1 of window "Cisco AnyConnect | shvpn.55haitao.com:1443" to vpn_username
        keystroke return
    end tell
    
    repeat until (window "Cisco AnyConnect | shvpn.55haitao.com:1443" of application process "Cisco AnyConnect Secure Mobility Client" exists)
        delay 1
    end repeat
    
    tell process "Cisco AnyConnect Secure Mobility Client"
        set value of text field 1 of window "Cisco AnyConnect | shvpn.55haitao.com:1443" to vpn_password
        keystroke return
    end tell
    
    repeat until (window "Cisco AnyConnect - Banner" of application process "Cisco AnyConnect Secure Mobility Client" exists)
        delay 1
    end repeat
    
    tell process "Cisco AnyConnect Secure Mobility Client"
        click button "Accept" of window "Cisco AnyConnect - Banner"
    end tell
end tell
