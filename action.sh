##fix non-sdk
su -c settings delete global hidden_api_policy
su -c settings delete global hidden_api_policy_p_apps
su -c settings delete global hidden_api_policy_pre_p_apps
clear
##fix 'Evil service(2)' (Native test)
resetprop --delete persist.log.tag.LSPosed
resetprop --delete persist.log.tag.LSPosed-Bridge
##hide *emulator*
resetprop --delete ro.kernel.qemu
##you can modify your own props using 'resetprop (--delete)' make sure you delete the '#' comments to make them work!
##example
# resetprop ro.force.debuggable 1
# resetprop ro.build.fingerprint google/akita_beta/akita:16/BP22.250325.012/13467521:user/release-keys
# resetprop --delete persist.sys.vold_app_data_isolation_enabled
sleep 1
##fix resetprop --> this means you don't have to reboot to apply changes
su -c rm -rf /dev/__properties__/u:object_r:exported_default_prop:s0
##notification
echo "🌟No need to reboot!😎"
