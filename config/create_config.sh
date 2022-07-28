#!/bin/bash

echo -e "\t==============================="
echo -e "\tGoing to load config classes..."
echo -e "\t==============================="

#default_choice="n"
#echo -e "\n\tWant to continue for creating config classes:"
#echo -n -e "\tEnter [y/n] : "
#read  -e  choice
#choice="${choice:-$default_choice}"
#
#if [ $choice != "y" ]
#then
#        echo -e "\n\tExiting..."
#        exit
#fi




CONFIG_DIR=.

#========Load pin_telco_tags==============
TELCO_TAGS=$CONFIG_DIR/pin_telco_tags_bb
echo -e "\nLoading pin_telco_tags\n--------------------"
echo "load_pin_telco_tags -v $TELCO_TAGS"
load_pin_telco_tags -v $TELCO_TAGS
echo -e "--------------------\n"


#========Load pin_tax_supplier==============
TAX_SUPPLIER=$CONFIG_DIR/pin_tax_supplier.xml
echo -e "\nLoading pin_tax_supplier\n--------------------"
echo "load_tax_supplier -v $TAX_SUPPLIER"
load_tax_supplier -v $TAX_SUPPLIER
echo -e "--------------------\n"

#========Load payment_term==============
PAYMENT_TERM=$CONFIG_DIR/pin_payment_term.xml
echo -e "\nLoading pin_payment_term.xml\n--------------------"
echo "load_pin_payment_term -v $PAYMENT_TERM"
load_pin_payment_term -v $PAYMENT_TERM
echo -e "--------------------\n"


#========Load pin_glid==============
PIN_GLID=$CONFIG_DIR/pin_glid
echo -e "\nLoading pin_glid\n--------------------"
echo "load_pin_glid -v $PIN_GLID"
load_pin_glid -v $PIN_GLID
echo -e "--------------------\n"

#========Load export GL==============
CFG_EXPORT_GL=$CONFIG_DIR/pin_config_export_gl.xml
echo -e "\nLoading pin_config_export_gl.xml\n--------------------"
echo "load_pin_config_export_gl -v $CFG_EXPORT_GL"
load_pin_config_export_gl -v $CFG_EXPORT_GL
echo -e "--------------------\n"

#========Load pin_config_business_type==============
BUS_TYPE_FILE=$CONFIG_DIR/pin_config_business_type
echo -e "\nLoading pin_config_business_type\n--------------------"
echo "load_pin_config_business_type -v $BUS_TYPE_FILE"
load_pin_config_business_type -v $BUS_TYPE_FILE
echo -e "--------------------\n"


#========Load business_params==============
BUS_PARAMS_PROFILE=$CONFIG_DIR/pin_business_profile.xml
echo -e "\nLoading pin_business_profile.xml\n--------------------"
echo "load_pin_business_profile -v $BUS_PARAMS_PROFILE"
load_pin_business_profile -v $BUS_PARAMS_PROFILE
echo -e "--------------------\n"

#========Load bill_suppression==============
BILL_SUPPRESSION=$CONFIG_DIR/pin_bill_suppression.xml
echo -e "\nLoading pin_bill_suppression.xml\n--------------------"
echo "load_pin_bill_suppression -v $BILL_SUPPRESSION"
load_pin_bill_suppression -v $BILL_SUPPRESSION
echo -e "--------------------\n"

#========Load pin_beid==============
BEID_FILE=$CONFIG_DIR/pin_beid
echo -e "\nLoading pin_beid\n--------------------"
echo "load_pin_beid -v $BEID_FILE"
load_pin_beid -v $BEID_FILE
echo -e "--------------------\n"

#========Load notification_template.en_US==============
NOTIF_TMPL=$CONFIG_DIR/notification_template.en_US
echo -e "\nLoading notification_template.en_US\n--------------------"
echo "load_localized_strings -v $NOTIF_TMPL"
load_localized_strings -v $NOTIF_TMPL
echo -e "--------------------\n"

========Load event_map==============
RUM_FILE=$CONFIG_DIR/mso_pin_rum
echo -e "\nLoading mso_pin_rum\n--------------------"
echo "load_pin_rum -v $RUM_FILE"
load_pin_rum -v $RUM_FILE
echo -e "--------------------\n"


#========Load event_map==============
EVENT_MAP=$CONFIG_DIR/mso_pin_event_map
echo -e "\nLoading pin_event_map\n--------------------"
echo "load_event_map -v $EVENT_MAP"
load_event_map -v $EVENT_MAP
echo -e "--------------------\n"

#========Load pin_ar_taxes==============
CFG_AR_TAXES=$CONFIG_DIR/mso_pin_config_ar_taxes.xml
echo -e "\nLoading pin_ar_taxes\n--------------------"
echo "load_pin_ar_taxes -v $CFG_AR_TAXES"
load_pin_ar_taxes -f $CFG_AR_TAXES
echo -e "--------------------\n"

cp $CONFIG_DIR/mso_PinBillRunControl.xml ${PIN_HOME}/apps/pin_billd/mso_PinBillRunControl.xml

#========Load pin_billing_segment==============
BILLING_SEGMENT=$CONFIG_DIR/mso_pin_billing_segment.xml
echo -e "\nLoading pin_billing_segment\n--------------------"
echo "load_pin_billing_segment -v $BILLING_SEGMENT"
load_pin_billing_segment -v $BILLING_SEGMENT
echo -e "--------------------\n"

#========Load pin_load_invoice_events==============
INV_EVENTS=$CONFIG_DIR/events.file
echo -e "\nLoading pin_load_invoice_events\n--------------------"
echo "pin_load_invoice_events -brand "0.0.0.1 /account 1" -eventfile $INV_EVENTS -reload"
pin_load_invoice_events -brand "0.0.0.1 /account 1" -eventfile $INV_EVENTS -reload
echo -e "--------------------\n"

#========Load config_item_tags==============
ITEM_TAGS=$CONFIG_DIR/config_item_tags.xml
echo -e "\nLoading config_item_tags.xml\n--------------------"
echo "load_config_item_tags -v $ITEM_TAGS"
load_config_item_tags -v $ITEM_TAGS
echo -e "--------------------\n"

#========Load config_item_types==============
ITEM_TYPES=$CONFIG_DIR/config_item_types.xml
echo -e "\nLoading config_item_types.xml\n--------------------"
echo "load_config_item_types -v $ITEM_TYPES"
load_config_item_types -v $ITEM_TYPES
echo -e "--------------------\n"

#========Load business_params==============
BUS_PARAMS_INV=$CONFIG_DIR/bus_params_Invoicing.xml
echo -e "\nLoading bus_params_Invoicing.xml\n--------------------"
echo "pin_bus_params -v $BUS_PARAMS_INV"
pin_bus_params -v $BUS_PARAMS_INV
echo -e "--------------------\n"

#========Load business_params==============
mv ${PIN_HOME}/xsd/bus_params_billing.xsl ${PIN_HOME}/xsd/bus_params_billing.xsl.orig
cp ${PIN_HOME}/mso/xsd/bus_params_billing.xsl ${PIN_HOME}/xsd/bus_params_billing.xsl

BUS_PARAMS_BILL=$CONFIG_DIR/bus_params_billing.xml
echo -e "\nLoading bus_params_billing.xml\n--------------------"
echo "pin_bus_params -v $BUS_PARAMS_BILL"
pin_bus_params -v $BUS_PARAMS_BILL
echo -e "--------------------\n"

#========Load device_permit_map==============
DEV_PERM_MAP_MODEM=$CONFIG_DIR/pin_device_permit_map_modem
echo -e "\nLoading pin_device_permit_map_modem\n--------------------"
echo "load_pin_device_permit_map -v $DEV_PERM_MAP_MODEM"
load_pin_device_permit_map -v $DEV_PERM_MAP_MODEM
echo -e "--------------------\n"

load_pin_device_state -d -v  pin_device_state_vc
load_pin_device_state -d -v  pin_device_state_stb
load_pin_device_state -d -v  pin_device_state_router_wifi
load_pin_device_state -d -v  pin_device_state_router_cable
load_pin_device_state -d -v  pin_device_state_nat
load_pin_device_state -d -v  pin_device_state_modem
load_pin_device_state -d -v  pin_device_state_ip_static
load_pin_device_state -d -v  pin_device_state_ip_framed
load_pin_device_state -d -v  pin_device_permit_map_vc
load_pin_device_state -d -v  pin_device_permit_map_stb

load_pin_device_permit_map -d -v  pin_device_permit_map_router_wifi
load_pin_device_permit_map -d -v  pin_device_permit_map_router_cable
load_pin_device_permit_map -d -v  pin_device_permit_map_nat
load_pin_device_permit_map -d -v  pin_device_permit_map_modem
load_pin_device_permit_map -d -v  pin_device_permit_map_ip_static
load_pin_device_permit_map -d -v  pin_device_permit_map_ip_framed

