.class public final Landroid/mokee/location/PhoneLocation;
.super Ljava/lang/Object;
.source "PhoneLocation.java"


# static fields
.field private static LIBPATH:Ljava/lang/String;

.field private static LOCATION:Ljava/lang/String;

.field private static PHONE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "mokee-phoneloc-jni"

    sput-object v0, Landroid/mokee/location/PhoneLocation;->LIBPATH:Ljava/lang/String;

    .line 29
    sget-object v0, Landroid/mokee/location/PhoneLocation;->LIBPATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static declared-synchronized doGetLocationFromPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "num"

    .prologue
    .line 35
    const-class v1, Landroid/mokee/location/PhoneLocation;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 43
    :goto_0
    monitor-exit v1

    return-object v0

    .line 38
    :cond_0
    :try_start_0
    sget-object v0, Landroid/mokee/location/PhoneLocation;->PHONE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Landroid/mokee/location/PhoneLocation;->LOCATION:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p0}, Landroid/mokee/location/PhoneLocation;->getPhoneLocationJni(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mokee/location/PhoneLocation;->LOCATION:Ljava/lang/String;

    .line 42
    sput-object p0, Landroid/mokee/location/PhoneLocation;->PHONE:Ljava/lang/String;

    .line 43
    sget-object v0, Landroid/mokee/location/PhoneLocation;->LOCATION:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCityFromPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "num"

    .prologue
    .line 63
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 64
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/mokee/location/PhoneLocation;->getPosFromPhone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, PhoneLocationStr:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0           #PhoneLocationStr:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getCodeFromPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "num"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/mokee/location/PhoneLocation;->getPosFromPhone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native getPhoneLocationJni(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static getPosFromPhone(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "num"
    .parameter "i"

    .prologue
    .line 47
    invoke-static {p0}, Landroid/mokee/location/PhoneLocation;->doGetLocationFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, s:Ljava/lang/String;
    const/4 v1, 0x0

    .line 49
    .local v1, ss:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 50
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 51
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 52
    aget-object v2, v1, p1

    .line 55
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
