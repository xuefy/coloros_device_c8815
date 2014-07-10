.class public Landroid/app/LayerActivity;
.super Landroid/app/Activity;
.source "LayerActivity.java"


# instance fields
.field private mRestarted:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mShouldFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-boolean v0, p0, Landroid/app/LayerActivity;->mRestarted:Z

    .line 26
    iput-boolean v0, p0, Landroid/app/LayerActivity;->mShouldFinish:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    iput-object p1, p0, Landroid/app/LayerActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 32
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LayerActivity;->mRestarted:Z

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    iget-boolean v0, p0, Landroid/app/LayerActivity;->mShouldFinish:Z

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LayerActivity;->mShouldFinish:Z

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LayerActivity;->mShouldFinish:Z

    .line 54
    invoke-virtual {p0}, Landroid/app/LayerActivity;->finish()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 43
    iget-boolean v0, p0, Landroid/app/LayerActivity;->mRestarted:Z

    iput-boolean v0, p0, Landroid/app/LayerActivity;->mShouldFinish:Z

    .line 44
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 60
    iget-object v0, p0, Landroid/app/LayerActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/app/LayerActivity;->finish()V

    .line 63
    :cond_0
    return-void
.end method
