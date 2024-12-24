SKIPMOUNT=false

PROPFILE=false

POSTFSDATA=false

LATESTARTSERVICE=false

print_modname() {
  ui_print "*******************************"
  ui_print "     Make by 鸡哥      "
  ui_print "*******************************"
}

on_install() {
  ui_print "- 正在释放文件"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive  $MODPATH  0  0  0755  0644
}

REPLACE="
/system/app/Stk/
/system/product/app/MIUIgreenguard/
/system/product/app/SogouInput/
/system/product/app/UPTsmService/
/system/product/priv-app/MIService/
/system/product/app/MITSMClient/
/system/product/app/MINextpay/
/system/product/app/MiBugReport/
"