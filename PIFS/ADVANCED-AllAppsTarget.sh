# This code adds all system apps to Magiskhide list. But I don't know how to see procs with .sh If you want to develop it, send a pull request.
# May be incompatible with other modules!

# Rename to AllAppsTarget.sh once completed.
# Move path: /data/adb/tricky_store/AllAppsTarget.sh

# Telegram: t.me/cleverestech

su -c > /data/adb/tricky_store/target.txt

su -c pm list packages | awk -F: '{print $2}' > /data/adb/tricky_store/target.txt

packages=$(su -c "pm list packages -s | cut -d ':' -f 2") 

for package in $packages; do
    su -c "magisk --denylist add '$package'"
done

# Add packages to Magisk denylist
denylist_add() {
  package=$1
  proc=$2

  if [ -z "$proc" ]; then
    su -c "magisk --denylist add $package"
  else
    su -c "magisk --denylist add $package $proc"
  fi
}

packages=(
  android.aosp.overlay\|android.aosp.overlay
android.aosp.overlay.telephony\|android.aosp.overlay.telephony
android.miui.home.launcher.res\|android.miui.home.launcher.res
android.miui.overlay\|android.miui.overlay
android.miui.overlay.telephony\|android.miui.overlay.telephony
android.overlay.common\|android.overlay.common
android.overlay.target\|android.overlay.target
android.qvaoverlay.common\|android.qvaoverlay.common
com.a101kapida.android\|com.a101kapida.android
com.a101kapida.android\|com.a101kapida.android:playcore_missing_splits_activity
com.ahlatci.ahlpay\|com.ahlatci.ahlpay
com.akbank.android.apps.akbank_direkt\|com.akbank.android.apps.akbank_direkt
com.akbank.android.apps.akbank_direkt\|com.akbank.android.apps.akbank_direkt:error_activity
com.akbank.android.apps.akbank_direkt\|com.akbank.android.apps.akbank_direkt:playcore_missing_splits_activity
com.akbank.android.apps.akbank_direkt\|com.akbank.android.apps.akbank_direkt:pushservice
com.akbank.android.apps.akbank_direkt\|com.akbank.android.apps.akbank_direkt:remote
com.akbank.android.apps.axess\|com.akbank.android.apps.axess
com.akbank.android.apps.axess\|com.akbank.android.apps.axess:pushservice
com.akbank.android.apps.axess\|com.akbank.android.apps.axess:remote
com.akode.tosla\|com.akode.tosla
com.akode.tosla\|com.akode.tosla:playcore_missing_splits_activity
com.aktifbank.nkolay\|com.aktifbank.nkolay
com.aktifbank.nkolay\|com.aktifbank.nkolay:playcore_missing_splits_activity
com.android.adservices.api\|com.android.adservices.api
com.android.apps.tag\|com.android.apps.tag
com.android.backupconfirm\|com.android.backupconfirm
com.android.bips\|com.android.bips
com.android.bluetooth\|com.android.bluetooth
com.android.bluetooth.overlay\|com.android.bluetooth.overlay
com.android.bluetoothmidiservice\|com.android.bluetoothmidiservice
com.android.browser\|com.android.browser
com.android.browser\|com.android.browser:customtabs
com.android.browser\|com.android.browser:fullsearch
com.android.browser\|com.android.browser:media
com.android.browser\|com.android.browser:megapp
com.android.browser\|com.android.browser:phoenix
com.android.browser\|com.android.browser:pushservice
com.android.browser\|com.android.browser:webapps
com.android.browser\|com.android.browser:widgetProvider
com.android.calendar\|com.android.calendar
com.android.calendar\|com.android.calendar:widgetProvider
com.android.calllogbackup\|com.android.calllogbackup
com.android.camera\|com.android.camera
com.android.camera\|com.android.camera:remote
com.android.camera\|com.android.camera:widgetProvider
com.android.camera.overlay\|com.android.camera.overlay
com.android.cameraextensions\|com.android.cameraextensions
com.android.captiveportallogin\|com.android.captiveportallogin
com.android.carrierconfig\|com.android.carrierconfig
com.android.carrierconfig.overlay.common\|com.android.carrierconfig.overlay.common
com.android.carrierconfig.overlay.miui\|com.android.carrierconfig.overlay.miui
com.android.carrierdefaultapp\|com.android.carrierdefaultapp
com.android.cellbroadcastreceiver\|com.android.cellbroadcastreceiver
com.android.cellbroadcastreceiver.overlay.common\|com.android.cellbroadcastreceiver.overlay.common
com.android.cellbroadcastservice\|com.android.cellbroadcastservice
com.android.certinstaller\|com.android.certinstaller
com.android.chrome\|com.android.chrome
com.android.chrome\|com.android.chrome:browser_restart_process
com.android.chrome\|com.android.chrome:launch_failed
com.android.chrome\|com.android.chrome:playcore_missing_splits_activity
com.android.chrome\|com.android.chrome:privileged_process0
com.android.chrome\|com.android.chrome:privileged_process1
com.android.chrome\|com.android.chrome:privileged_process2
com.android.chrome\|com.android.chrome:privileged_process3
com.android.chrome\|com.android.chrome:privileged_process4
com.android.chrome\|com.android.chrome_zygote
com.android.companiondevicemanager\|com.android.companiondevicemanager
com.android.connectivity.resources\|com.android.connectivity.resources
com.android.contacts\|com.android.contacts
com.android.credentialmanager\|com.android.credentialmanager
com.android.cts.ctsshim\|com.android.cts.ctsshim
com.android.cts.priv.ctsshim\|com.android.cts.priv.ctsshim
com.android.deskclock\|com.android.deskclock
com.android.deskclock\|com.android.deskclock:remote
com.android.devicelockcontroller\|com.android.devicelockcontroller
com.android.dreams.basic\|com.android.dreams.basic
com.android.dynsystem\|com.android.dynsystem
com.android.email\|com.android.email
com.android.emergency\|com.android.emergency
com.android.externalstorage\|com.android.externalstorage
com.android.federatedcompute.services\|com.android.federatedcompute.services
com.android.fileexplorer\|com.android.fileexplorer
com.android.fileexplorer\|com.android.fileexplorer:miuiplus
com.android.fileexplorer\|com.android.fileexplorer:widgetProvider
com.android.health.connect.backuprestore\|com.android.health.connect.backuprestore
com.android.healthconnect.controller\|com.android.healthconnect.controller
com.android.hotspot2.osulogin\|com.android.hotspot2.osulogin
com.android.htmlviewer\|com.android.htmlviewer
com.android.incallui\|com.android.incallui
com.android.inputdevices\|com.android.inputdevices
com.android.inputsettings.overlay.miui\|com.android.inputsettings.overlay.miui
com.android.intentresolver\|com.android.intentresolver
com.android.internal.display.cutout.emulation.corner\|com.android.internal.display.cutout.emulation.corner
com.android.internal.display.cutout.emulation.double\|com.android.internal.display.cutout.emulation.double
com.android.internal.display.cutout.emulation.hole\|com.android.internal.display.cutout.emulation.hole
com.android.internal.display.cutout.emulation.tall\|com.android.internal.display.cutout.emulation.tall
com.android.internal.display.cutout.emulation.waterfall\|com.android.internal.display.cutout.emulation.waterfall
com.android.internal.systemui.navbar.gestural\|com.android.internal.systemui.navbar.gestural
com.android.internal.systemui.navbar.gestural_extra_wide_back\|com.android.internal.systemui.navbar.gestural_extra_wide_back
com.android.internal.systemui.navbar.gestural_narrow_back\|com.android.internal.systemui.navbar.gestural_narrow_back
com.android.internal.systemui.navbar.gestural_wide_back\|com.android.internal.systemui.navbar.gestural_wide_back
com.android.internal.systemui.navbar.threebutton\|com.android.internal.systemui.navbar.threebutton
com.android.internal.systemui.navbar.transparent\|com.android.internal.systemui.navbar.transparent
com.android.keychain\|com.android.keychain
com.android.localtransport\|com.android.localtransport
com.android.location.fused\|com.android.location.fused
com.android.managedprovisioning\|com.android.managedprovisioning
com.android.managedprovisioning.overlay\|com.android.managedprovisioning.overlay
com.android.mms\|com.android.mms
com.android.mms\|com.android.mms:CMCCSsoService
com.android.mms\|com.android.mms:appcustom
com.android.mms\|com.android.mms:mms_service
com.android.mms.service\|com.android.mms.service
com.android.modulemetadata\|com.android.modulemetadata
com.android.mtp\|com.android.mtp
com.android.musicfx\|com.android.musicfx
com.android.nearby.halfsheet\|com.android.nearby.halfsheet
com.android.networkstack\|com.android.networkstack
com.android.networkstack.overlay.miui\|com.android.networkstack.overlay.miui
com.android.networkstack.tethering\|com.android.networkstack.tethering
com.android.nfc\|com.android.nfc
com.android.nfc\|com.android.nfc:beam
com.android.nfc\|com.android.nfc:com.android.nfc.chooser
com.android.ondevicepersonalization.services\|com.android.ondevicepersonalization.services
com.android.ons\|com.android.ons
com.android.ons\|com.android.phone
com.android.overlay.cngmstelecomm\|com.android.overlay.cngmstelecomm
com.android.overlay.gmscontactprovider\|com.android.overlay.gmscontactprovider
com.android.overlay.gmssettingprovider\|com.android.overlay.gmssettingprovider
com.android.overlay.gmssettings\|com.android.overlay.gmssettings
com.android.overlay.gmstelecomm\|com.android.overlay.gmstelecomm
com.android.overlay.gmstelephony\|com.android.overlay.gmstelephony
com.android.overlay.systemui\|com.android.overlay.systemui
com.android.pacprocessor\|com.android.pacprocessor
com.android.permissioncontroller\|com.android.permissioncontroller
com.android.phone\|com.android.phone
com.android.phone.common.overlay.miui\|com.android.phone.common.overlay.miui
com.android.phone.overlay.common\|com.android.phone.overlay.common
com.android.phone.overlay.miui\|com.android.phone.overlay.miui
com.android.printspooler\|com.android.printspooler
com.android.providers.blockednumber\|com.android.providers.blockednumber
com.android.providers.calendar\|com.android.providers.calendar
com.android.providers.contacts\|com.android.providers.contacts
com.android.providers.downloads\|com.android.providers.downloads
com.android.providers.media\|android.process.media
com.android.providers.media\|com.android.providers.media
com.android.providers.media.module\|com.android.providers.media.module
com.android.providers.partnerbookmarks\|com.android.providers.partnerbookmarks
com.android.providers.settings\|com.android.providers.settings
com.android.providers.settings.overlay\|com.android.providers.settings.overlay
com.android.providers.telephony\|com.android.providers.telephony
com.android.providers.telephony.overlay.miui\|com.android.providers.telephony.overlay.miui
com.android.providers.userdictionary\|com.android.providers.userdictionary
com.android.provision\|com.android.provision
com.android.provision.resource.overlay\|com.android.provision.resource.overlay
com.android.proxyhandler\|com.android.proxyhandler
com.android.quicksearchbox\|com.android.quicksearchbox
com.android.quicksearchbox\|com.android.quicksearchbox:ApplicationsProvider
com.android.quicksearchbox\|com.android.quicksearchbox:pushservice
com.android.quicksearchbox\|com.android.quicksearchbox:widgetProvider
com.android.rkpdapp\|com.android.rkpdapp
com.android.role.notes.enabled\|com.android.role.notes.enabled
com.android.safetycenter.resources\|com.android.safetycenter.resources
com.android.se\|com.android.se
com.android.se.overlay.target\|com.android.se.overlay.target
com.android.server.telecom\|com.android.server.telecom
com.android.server.telecom.overlay.common\|com.android.server.telecom.overlay.common
com.android.server.telecom.overlay.miui\|com.android.server.telecom.overlay.miui
com.android.settings\|com.android.phone
com.android.settings\|com.android.settings
com.android.settings\|com.android.settings:pushservice
com.android.settings\|com.android.settings:remote
com.android.settings\|com.miui.backup
com.android.settings.intelligence\|com.android.settings.intelligence
com.android.settings.overlay.common\|com.android.settings.overlay.common
com.android.settings.overlay.miui\|com.android.settings.overlay.miui
com.android.settings.resource.overlay\|com.android.settings.resource.overlay
com.android.sharedstoragebackup\|com.android.sharedstoragebackup
com.android.shell\|com.android.shell
com.android.simappdialog\|com.android.simappdialog
com.android.smspush\|com.android.smspush
com.android.soundrecorder\|com.android.soundrecorder
com.android.soundrecorder\|com.android.soundrecorder:remote
com.android.soundrecorder\|com.android.soundrecorder:sync
com.android.statementservice\|com.android.statementservice
com.android.stk\|com.android.stk
com.android.stk.overlay.miui\|com.android.stk.overlay.miui
com.android.storagemanager\|com.android.storagemanager
com.android.systemui\|com.android.systemui
com.android.systemui\|com.android.systemui:appclips.screenshot
com.android.systemui\|com.android.systemui:fgservices
com.android.systemui\|com.android.systemui:screenshot
com.android.systemui\|com.android.systemui:sweetsweetdesserts
com.android.systemui\|com.android.systemui:tuner
com.android.systemui.accessibility.accessibilitymenu\|com.android.systemui.accessibility.accessibilitymenu
com.android.systemui.gesture.line.overlay\|com.android.systemui.gesture.line.overlay
com.android.systemui.navigation.bar.overlay\|com.android.systemui.navigation.bar.overlay
com.android.systemui.overlay.common\|com.android.systemui.overlay.common
com.android.systemui.overlay.miui\|com.android.systemui.overlay.miui
com.android.theme.font.notoserifsource\|com.android.theme.font.notoserifsource
com.android.thememanager\|com.android.thememanager
com.android.thememanager\|com.android.thememanager:mamldataprovider
com.android.thememanager\|com.android.thememanager:pushservice
com.android.thememanager\|com.android.thememanager:videowallpaper
com.android.thememanager.customthemeconfig.config.overlay\|com.android.thememanager.customthemeconfig.config.overlay
com.android.traceur\|com.android.traceur
com.android.updater\|com.android.updater
com.android.uwb.resources\|com.android.uwb.resources
com.android.vending\|com.android.vending
com.android.virtualmachine.res\|com.android.virtualmachine.res
com.android.vpndialogs\|com.android.vpndialogs
com.android.wallpaper.livepicker\|com.android.wallpaper.livepicker
com.android.wallpaperbackup\|com.android.wallpaperbackup
com.android.wallpapercropper\|com.android.wallpapercropper
com.android.wifi.dialog\|com.android.wifi.dialog
com.android.wifi.resources\|com.android.wifi.resources
com.android.wifi.resources.overlay.common\|com.android.wifi.resources.overlay.common
com.android.wifi.resources.overlay.kalama\|com.android.wifi.resources.overlay.kalama
com.android.wifi.resources.overlay.target\|com.android.wifi.resources.overlay.target
com.android.wifi.resources.xiaomi\|com.android.wifi.resources.xiaomi
com.app.sipay\|com.app.sipay
com.app.sipay\|com.app.sipay:playcore_missing_splits_activity
com.ataexpress.tiklagelsin\|com.ataexpress.tiklagelsin
com.ataexpress.tiklagelsin\|com.ataexpress.tiklagelsin:alarmReceiverService
com.ataexpress.tiklagelsin\|com.ataexpress.tiklagelsin:container
com.ataexpress.tiklagelsin\|com.ataexpress.tiklagelsin:miqforegroundService
com.ataexpress.tiklagelsin\|com.ataexpress.tiklagelsin:playcore_missing_splits_activity
com.ataexpress.tiklagelsin\|com.ataexpress.tiklagelsin:pushservice
com.ataexpress.tiklagelsin\|com.ataexpress.tiklagelsin:scannerService
com.ataexpress.tiklagelsin\|com.ataexpress.tiklagelsin:transmitterService
com.barn.promomatik.cekkazan\|com.barn.promomatik.cekkazan
com.barn.promomatik.cekkazan\|com.barn.promomatik.cekkazan:playcore_missing_splits_activity
com.biletdukkani.b2c\|com.biletdukkani.b2c
com.binance.dev\|com.binance.dev
com.binance.dev\|com.binance.dev:filedownloader
com.binance.dev\|com.binance.dev:heap_analysis
com.binance.dev\|com.binance.dev:nezha0
com.binance.dev\|com.binance.dev:nezha1
com.binance.dev\|com.binance.dev:nezha2
com.binance.dev\|com.binance.dev:nezha3
com.binance.dev\|com.binance.dev:nezha4
com.binance.dev\|com.binance.dev:nezha5
com.binance.dev\|com.binance.dev:onfido_process
com.binance.dev\|com.binance.dev:playcore_missing_splits_activity
com.binance.dev\|com.binance.dev:push
com.bsp.catchlog\|com.bsp.catchlog
com.cloud.tr\|com.cloud.tr
com.cloud.tr\|com.cloud.tr:playcore_missing_splits_activity
com.cloud.tr\|com.cloud.tr:push
com.cloud.tr\|com.cloud.tr:pushservice
com.cocacola.dahadaha\|com.cocacola.dahadaha
com.cocacola.dahadaha\|com.cocacola.dahadaha:remote
com.colendi.money_pay\|com.colendi.money_pay
com.comuto\|com.comuto
com.comuto\|com.comuto:Metrica
com.comuto\|com.comuto:onfido_process
com.comuto\|com.comuto:phoenix
com.disney.disneyplus\|com.disney.disneyplus
com.disney.disneyplus\|com.disney.disneyplus:playcore_missing_splits_activity
com.duokan.phone.remotecontroller\|com.duokan.phone.remotecontroller
com.duokan.phone.remotecontroller\|com.duokan.phone.remotecontroller:newinst
com.excelliance.multiaccounts\|com.excelliance.multiaccounts
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:lbcore
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:lebian
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin.P00
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin.P01
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin.P02
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin.P03
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin.P04
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin.P05
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin.P06
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin.P07
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin.P08
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin.P09
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin1.P00
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin1.P01
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin1.P02
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin1.P03
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin1.P04
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin1.P05
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin1.P06
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin1.P07
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin1.P08
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin1.P09
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin2.P00
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin2.P01
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin2.P02
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin2.P03
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin2.P04
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin2.P05
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin2.P06
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin2.P07
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin2.P08
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin2.P09
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin3.P00
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin3.P01
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin3.P02
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin3.P03
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin3.P04
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin3.P05
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin3.P06
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin3.P07
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin3.P08
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:platform.gameplugin4.P02
com.excelliance.multiaccounts\|com.excelliance.multiaccounts:p

# Temporarily stopped due to server need. This is torture for most people.

#if [ -f "/data/adb/tricky_store/keybox.xml" ]; then
#  rm "/data/adb/tricky_store/keybox.xml"
#fi
#random_keybox=$(find "/data/adb/modules/tricky_store/keyboxs/keyboxs/" -type f -name "*.xml" | shuf -n 1)
#if [ -z "$random_keybox" ]; then
#    exit 1
#fi
#cp "$random_keybox" "/data/adb/tricky_store/keybox.xml" 

#su -c killall com.google.android.gms
#su -c killall com.google.android.gms.unstable
