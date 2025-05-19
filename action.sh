##You can modify your own props using 'resetprop (--delete)' !
##Example:
# resetprop ro.build.fingerprint google/akita_beta/akita:16/BP22.250325.012/13467521:user/release-keys
# resetprop --delete persist.sys.vold_app_data_isolation_enabled
##Put the props BEFORE the 'sleep 1'
sleep 1
##Fix resetprop 'Property modified(10)' (Native test)
su -c rm -rf /dev/__properties__/u:object_r:exported_default_prop:s0
su -c rm -rf /dev/__properties__/u:object_r:default_prop:s0
##Notification
echo "🌟No need to reboot!😎"