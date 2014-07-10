.class public Landroid/telephony/OppoTelephonyConstant;
.super Ljava/lang/Object;
.source "OppoTelephonyConstant.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "constant define from OPPO and MTK"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field public static final ACTION_DEFAULT_SIM_REMOVED:Ljava/lang/String; = "android.intent.action.DEFAULT_SIM_REMOVED"

.field public static final ACTION_DOWNLOAD_CALIBRATION_DATA:Ljava/lang/String; = "android.intent.action.DOWNLOAD_CALIBRATION_DATA"

.field public static final ACTION_NEW_SIM_DETECTED:Ljava/lang/String; = "android.intent.action.NEW_SIM_DETECTED"

.field public static final ACTION_RADIO_OFF:Ljava/lang/String; = "android.intent.action.RADIO_OFF"

.field public static final ACTION_SIM_INFO_UPDATE:Ljava/lang/String; = "android.intent.action.SIM_INFO_UPDATE"

.field public static final ACTION_SIM_INSERTED_STATUS:Ljava/lang/String; = "android.intent.action.SIM_INSERTED_STATUS"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final APN_REQUEST_FAILED_DUE_TO_RADIO_OFF:I = 0x62

.field public static final APN_TYPE_CMMAIL:Ljava/lang/String; = "cmmail"

.field public static final APN_TYPE_DISABLE_ONGOING:I = 0x64

.field public static final APN_TYPE_DM:Ljava/lang/String; = "dm"

.field public static final APN_TYPE_NET:Ljava/lang/String; = "net"

.field public static final APN_TYPE_NOT_AVAILABLE_DUE_TO_RECORDS_NOT_LOADED:I = 0x63

.field public static final APN_TYPE_RCSE:Ljava/lang/String; = "rcse"

.field public static final APN_TYPE_TETHERING:Ljava/lang/String; = "tethering"

.field public static final APN_TYPE_WAP:Ljava/lang/String; = "wap"

.field public static final DISCONNECT_DATA_FLAG:Ljava/lang/String; = "disconnectPdpFlag"

.field public static final EXTRA_CALIBRATION_DATA:Ljava/lang/String; = "calibrationData"

.field public static final FEATURE_ENABLE_CMMAIL:Ljava/lang/String; = "enableCMMAIL"

.field public static final FEATURE_ENABLE_DM:Ljava/lang/String; = "enableDM"

.field public static final FEATURE_ENABLE_NET:Ljava/lang/String; = "enableNET"

.field public static final FEATURE_ENABLE_WAP:Ljava/lang/String; = "enableWAP"

.field public static final GEMINI_DEFAULT_SIM_PROP:Ljava/lang/String; = "persist.radio.default_sim"

.field public static final GEMINI_SIM_1:I = 0x0

.field public static final GEMINI_SIM_2:I = 0x1

.field public static final GEMINI_SIM_3:I = 0x2

.field public static final GEMINI_SIM_4:I = 0x3

.field public static final GEMINI_SIM_ID_KEY:Ljava/lang/String; = "simId"

.field public static final GEMINI_SIM_NUM_PROP:Ljava/lang/String; = "persist.gemini.sim_num"

.field public static final GEMINI_SIP_CALL:I = -0x1

.field public static final IS_VT_CALL:Ljava/lang/String; = "isVtCall"

.field public static final MULTI_SIM_ID_KEY:Ljava/lang/String; = "simid"

.field public static final OPPO_MAX_PB_EMAIL_LENGTH:I = 0x1e

.field public static final OPPO_MAX_PB_NAME_LENGTH:I = 0xe

.field public static final OPPO_MAX_PB_NUMBER_LENGTH:I = 0x14

.field public static final OPPO_SIMPHONEBOOK_STATE_ERROR:I = -0x1

.field public static final OPPO_SIMPHONEBOOK_STATE_NOT_READY:I = 0x0

.field public static final OPPO_SIMPHONEBOOK_STATE_READY:I = 0x1

.field public static final PROPERTY_CS_NETWORK_TYPE:Ljava/lang/String; = "gsm.cs.network.type"

.field public static final PROPERTY_CS_NETWORK_TYPE_2:Ljava/lang/String; = "gsm.cs.network.type.2"

.field public static PROPERTY_DATA_NETWORK_TYPE_2:Ljava/lang/String; = null

.field public static final PROPERTY_GSM_SIM_INSERTED:Ljava/lang/String; = "gsm.sim.inserted"

.field public static PROPERTY_ICC_OPERATOR_ALPHA_2:Ljava/lang/String; = null

.field public static PROPERTY_ICC_OPERATOR_DEFAULT_NAME:Ljava/lang/String; = null

.field public static PROPERTY_ICC_OPERATOR_DEFAULT_NAME_2:Ljava/lang/String; = null

.field public static PROPERTY_ICC_OPERATOR_ISO_COUNTRY_2:Ljava/lang/String; = null

.field public static PROPERTY_ICC_OPERATOR_NUMERIC_2:Ljava/lang/String; = null

.field public static final PROPERTY_OPERATOR_ALPHA_2:Ljava/lang/String; = "gsm.operator.alpha.2"

.field public static final PROPERTY_OPERATOR_ISMANUAL_2:Ljava/lang/String; = "operator.ismanual.2"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY_2:Ljava/lang/String; = "gsm.operator.iso-country.2"

.field public static final PROPERTY_OPERATOR_ISROAMING_2:Ljava/lang/String; = "gsm.operator.isroaming.2"

.field public static final PROPERTY_OPERATOR_NUMERIC_2:Ljava/lang/String; = "gsm.operator.numeric.2"

.field public static final PROPERTY_ROAMING_INDICATOR_NEEDED:Ljava/lang/String; = "gsm.roaming.indicator.needed"

.field public static final PROPERTY_ROAMING_INDICATOR_NEEDED_2:Ljava/lang/String; = "gsm.roaming.indicator.needed.2"

.field public static final PROPERTY_SIM_INFO_READY:Ljava/lang/String; = "gsm.siminfo.ready"

.field public static PROPERTY_SIM_STATE_2:Ljava/lang/String; = null

.field public static final REASON_GPRS_ATTACHED_TIMEOUT:Ljava/lang/String; = "gprsAttachedTimeout"

.field public static final REASON_NO_SUCH_PDP:Ljava/lang/String; = "noSuchPdp"

.field public static final REASON_ON_RADIO_AVAILABLE:Ljava/lang/String; = "onRadioAvailable"

.field public static final REASON_ON_RECORDS_LOADED:Ljava/lang/String; = "onRecordsLoaded"

.field public static final REASON_PDP_NOT_ACTIVE:Ljava/lang/String; = "pdpNotActive"

.field public static final REASON_POLL_STATE_DONE:Ljava/lang/String; = "pollStateDone"

.field public static final SIM_INDICATOR_ABSENT:I = 0x0

.field public static final SIM_INDICATOR_CONNECTED:I = 0x7

.field public static final SIM_INDICATOR_INVALID:I = 0x3

.field public static final SIM_INDICATOR_LOCKED:I = 0x2

.field public static final SIM_INDICATOR_NORMAL:I = 0x5

.field public static final SIM_INDICATOR_RADIOOFF:I = 0x1

.field public static final SIM_INDICATOR_ROAMING:I = 0x6

.field public static final SIM_INDICATOR_ROAMINGCONNECTED:I = 0x8

.field public static final SIM_INDICATOR_SEARCHING:I = 0x4

.field public static final SIM_INDICATOR_UNKNOWN:I = -0x1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add SIM_INDICATOR_XXX"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->MTK:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final SIM_STATE_SIMREFRESH:I = 0x64

.field public static final SIM_STATE_SWICTHCARD:I = 0x63

.field public static final TOTAL_SIM_COLOR_COUNT:I = 0x4

.field public static final mOppoMatchLen:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "gsm.sim.state.2"

    sput-object v0, Landroid/telephony/OppoTelephonyConstant;->PROPERTY_SIM_STATE_2:Ljava/lang/String;

    const-string v0, "gsm.sim.operator.numeric.2"

    sput-object v0, Landroid/telephony/OppoTelephonyConstant;->PROPERTY_ICC_OPERATOR_NUMERIC_2:Ljava/lang/String;

    const-string v0, "gsm.sim.operator.alpha.2"

    sput-object v0, Landroid/telephony/OppoTelephonyConstant;->PROPERTY_ICC_OPERATOR_ALPHA_2:Ljava/lang/String;

    const-string v0, "gsm.sim.operator.iso-country.2"

    sput-object v0, Landroid/telephony/OppoTelephonyConstant;->PROPERTY_ICC_OPERATOR_ISO_COUNTRY_2:Ljava/lang/String;

    const-string v0, "gsm.sim.operator.default-name"

    sput-object v0, Landroid/telephony/OppoTelephonyConstant;->PROPERTY_ICC_OPERATOR_DEFAULT_NAME:Ljava/lang/String;

    const-string v0, "gsm.sim.operator.default-name.2"

    sput-object v0, Landroid/telephony/OppoTelephonyConstant;->PROPERTY_ICC_OPERATOR_DEFAULT_NAME_2:Ljava/lang/String;

    const-string v0, "gsm.network.type.2"

    sput-object v0, Landroid/telephony/OppoTelephonyConstant;->PROPERTY_DATA_NETWORK_TYPE_2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
