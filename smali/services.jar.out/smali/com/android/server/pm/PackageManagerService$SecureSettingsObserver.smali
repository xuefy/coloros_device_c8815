.class final Lcom/android/server/pm/PackageManagerService$SecureSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecureSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SecureSettingsObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 442
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 443
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 447
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 448
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SecureSettingsObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SecureSettingsObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->isPermManagementEnabled()Z
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/pm/PackageManagerService;->mIsPermManagementEnabled:Z

    .line 449
    return-void
.end method
