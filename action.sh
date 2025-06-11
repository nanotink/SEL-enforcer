##You can modify your own props using 'resetprop (--delete)' !
##Example:
# resetprop ro.build.fingerprint google/akita_beta/akita:16/BP22.250325.012/13467521:user/release-keys
# resetprop --delete persist.sys.vold_app_data_isolation_enabled
##Fix 'Evil service(2)' (Native test)
resetprop --delete persist.log.tag.LSPosed
resetprop --delete persist.log.tag.LSPosed-Bridge
##Hide *emulator*
resetprop --delete ro.kernel.qemu
##Fix (Samsung) Found native bridge injection
resetprop --delete ro.dalvik.vm.native.bridge
##SELinux flag fix
resetprop ro.build.selinux 0 #Secure
########################################
#######Put the props BEFORE the 'sleep 1'#######
########################################
sleep 1
##Fix non-sdk
su -c settings delete global hidden_api_policy
su -c settings delete global hidden_api_policy_p_apps
su -c settings delete global hidden_api_policy_pre_p_apps
clear
##Fix resetprop 'Property modified(10)' (Native test)
su -c rm -rf /dev/__properties__/u:object_r:exported_default_prop:s0
#su -c rm -rf /dev/__properties__/u:object_r:default_prop:s0 ##Shouldn't cause problems
su -c rm -rf /dev/__properties__/u:object_r:dalvik_config_prop:s0 ##Might cause issues
##Notification
echo "🌟No need to reboot!😎"
