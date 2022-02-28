#!/sbin/sh

###########################
# MMT Reborn Logic
###########################

############
# Config Vars
############

# Uncomment if you want to skip mount for your module
#SKIPMOUNT=true
# Uncomment if you want to clean old files in module before injecting new module
#CLEANSERVICE=true
# Uncomment if you want to load vskel after module info print. If you want to manually load it, consider using load_vksel function
#AUTOVKSEL=true
# Uncomment DEBUG if you want store debug logs of installation
DEBUG=true


############
# Replace List
############

# List all directories you want to directly replace in the system
# Construct your list in the following example format
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"
# Construct your own list here
REPLACE="
/system/priv-app/AsusLauncherDev
/system/priv-app/Lawnchair
/system/priv-app/NexusLauncherPrebuilt
/system/system_ext/priv-app/Launcher3QuickStep
/system/product/priv-app/ParanoidQuickStep
/system/product/priv-app/ShadyQuickStep
/system/product/priv-app/TrebuchetQuickStep
/system/system_ext/priv-app/DerpLauncherQuickStep
/system/system_ext/priv-app/NexusLauncherRelease
"

############
# Cleanup
############

# Remove unnecessary stuff
do_cleanup() {
  rmtouch "$MODPATH/system/placeholder"
}

############
# Permissions
############

# Set permissions
set_permissions() {
  set_perm_recursive "$MODPATH" 0 0 0777 0755
  set_perm_recursive "$MODPATH/system/product/priv-app" 0 0 0777 0755
  set_perm_recursive "$MODPATH/system/product/overlay" 0 0 0777 0755
  set_perm_recursive "$MODPATH/system/system_ext/priv-app" 0 0 0777 0755  
}

############
# Info Print
############

# Set what you want to be displayed on header of installation process
info_print() {
  ui_print ""
  ui_print "********************************************"
  ui_print "   Systemless Modded Pixel Launcher"
  ui_print "    By @saitama_96 & @MrSluffy_69"
  ui_print "      Thanks to @iamloooper for script"
  ui_print "********************************************"

  sleep 2
}

############
# Main
############

# Change the logic to whatever you want
int_main() {
  ui_print ""
  ui_print "[*] Installing Modded Pixel Launcher..."

  sleep 2

  ui_print ""
  ui_print "[*] Done!"
}