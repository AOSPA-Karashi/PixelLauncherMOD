#!/system/bin/sh
# Modded Pixel Launcher 

wait_until_boot_complete() {
  while [[ "$(getprop sys.boot_completed)" != "1" ]]; do
    sleep 2
  done
}

priority_opt() {
  for pid in $(pgrep -f system) $(pgrep -f system_server) $(pgrep -f zygote) $(pgrep -f surfaceflinger) $(pgrep -f com.android.systemui) $(pgrep -f com.google.android.apps.nexuslauncher); do
    renice -n -20 -p "$pid"
    ionice -c 1 -n 0 -p "$pid"
  done
}

wait_until_boot_complete
priority_opt