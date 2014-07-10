.class Landroid/media/AudioService$6;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService;->remoteSliderVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;

.field final synthetic val$hasRemotePlayback:Z


# direct methods
.method constructor <init>(Landroid/media/AudioService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4247
    iput-object p1, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    iput-boolean p2, p0, Landroid/media/AudioService$6;->val$hasRemotePlayback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4250
    iget-object v1, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$400(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4251
    iget-object v1, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    #setter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$402(Landroid/media/AudioService;Landroid/content/Context;)Landroid/content/Context;

    .line 4254
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$400(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$400(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    .line 4255
    .local v0, context:Landroid/content/Context;
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    new-instance v2, Lcom/oppo/view/VolumePanel;

    iget-object v3, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    invoke-direct {v2, v0, v3}, Lcom/oppo/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    #setter for: Landroid/media/AudioService;->mVolumePanel:Lcom/oppo/view/VolumePanel;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$9602(Landroid/media/AudioService;Lcom/oppo/view/VolumePanel;)Lcom/oppo/view/VolumePanel;

    .line 4256
    iget-object v1, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVolumePanel:Lcom/oppo/view/VolumePanel;
    invoke-static {v1}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;)Lcom/oppo/view/VolumePanel;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$6;->val$hasRemotePlayback:Z

    invoke-virtual {v1, v2}, Lcom/oppo/view/VolumePanel;->postRemoteSliderVisibility(Z)V

    .line 4257
    return-void

    .line 4254
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method
