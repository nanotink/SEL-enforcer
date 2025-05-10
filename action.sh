#fix non-sdk
su -c settings delete global hidden_api_policy
su -c settings delete global hidden_api_policy_p_apps
su -c settings delete global hidden_api_policy_pre_p_apps
#fix 'Evil service(2)' (Native test)
resetprop --delete persist.log.tag.LSPosed
resetprop --delete persist.log.tag.LSPosed-Bridge
#hide *emulator*
resetprop --delete ro.kernel.qemu #May not work!
#notification
echo "Please reboot🔄 to apply changes!"
