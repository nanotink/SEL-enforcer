##Fix non-sdk
su -c settings delete global hidden_api_policy
su -c settings delete global hidden_api_policy_p_apps
su -c settings delete global hidden_api_policy_pre_p_apps
clear
##Fix 'Evil service(2)' (Native test)
resetprop --delete persist.log.tag.LSPosed
resetprop --delete persist.log.tag.LSPosed-Bridge
##Hide *emulator*
resetprop --delete ro.kernel.qemu
##Reset props to normal values
resetprop ro.boot.vbmeta.device_state locked
resetprop ro.boot.verifiedbootstate green
resetprop ro.boot.flash.locked 1
resetprop ro.boot.veritymode enforcing
resetprop ro.boot.warranty_bit 0
resetprop ro.warranty_bit 0
resetprop ro.debuggable 0
resetprop ro.force.debuggable 0
resetprop ro.secure 1
resetprop ro.adb.secure 1
resetprop ro.build.type user
resetprop ro.build.tags release-keys
resetprop ro.vendor.boot.warranty_bit 0
resetprop ro.vendor.warranty_bit 0
resetprop vendor.boot.vbmeta.device_state locked
resetprop vendor.boot.verifiedbootstate green
resetprop sys.oem_unlock_allowed 0
##Hide recovery
resetprop ro.bootmode unknown
resetprop ro.boot.bootmode unknown
resetprop vendor.boot.bootmode unknown
su -c rm -rf /sdcard/TWRP
##SELinux flag fix
resetprop ro.build.selinux 0 #Secure
##Fix resetprop 'Property modified(10)' (Native test)
su -c rm -rf /dev/__properties__/u:object_r:exported_default_prop:s0
su -c rm -rf /dev/__properties__/u:object_r:default_prop:s0
delay=3 #in seconds
while :
do
    setenforce 1 #set it to '0' to make SELinux 'permissive' to apply it reboot!
    sleep $delay
done