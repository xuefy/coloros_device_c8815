.class public Landroid/net/OppoConnectivityManager;
.super Landroid/net/ConnectivityManager;
.source "OppoConnectivityManager.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "sub class of ConnectivityManager"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .locals 0
    .parameter "service"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    return-void
.end method


# virtual methods
.method public oppoGetMobileDataEnabled()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/OppoConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method public oppoGetTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/OppoConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oppoGetTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/OppoConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oppoGetTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/OppoConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oppoIsNetworkSupported(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/OppoConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method
