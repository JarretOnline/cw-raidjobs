local Translations = {
    error = {
        ["canceled"]                    = "STOPPED",
        ["someone_recently_did_this"]   = "BOSS IS BUSY!",
        ["cannot_do_this_right_now"]    = "BOSS IS BUSY!",
        ["you_failed"]                  = "FAILED",
        ["you_cannot_do_this"]          = "ERROR",
        ["you_dont_have_enough_money"]  = "NO MONEYS",
        ["you_dont_have_the_case"]      = "NO SECURITY CASE!",
    },
    success = {
        ["case_has_been_unlocked"]              = "CASE UNLOCKED",
        ["you_removed_first_security_case"]     = "CASE DEACTIVATED",
        ["you_got_paid"]                        = "PAID",
        ["send_email_right_now"]                = "CHECK YOUR EMAILS!",
        ["case_beep"]                           = "CASE IS TIME LOCKED!",
        ["case_beep_stop"]                      = "CASE OPENED!",
    },
    info = {
        ["talking_to_boss"]             = "TALKING TO BOSS",
        ["unlocking_case"]              = "UNLOCKING CASE",
        ["checking_quality"]            = "PRODUCT CHECK",
    },
    mailstart = {
        ["sender"]                      = 'BOSS',
        ["subject"]                     = 'SUPPLIES',
        ["message"]                     = "GRAB THE CASE MARKED ON YOUR GPS!",
    },
    mail = {
        ["sender"]                      = 'BOSS',
        ["subject"]                     = 'SUPPLIES',
        ["message"]                     = "GRAB THE CASE MARKED ON YOUR GPS!",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
