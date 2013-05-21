.class public Lcom/google/glass/camera/VideoSubroutineActivity;
.super Lcom/google/glass/camera/BaseRecordVideoActivity;
.source "VideoSubroutineActivity.java"


# static fields
.field public static final EXTRA_VIDEO_FILE_PATH:Ljava/lang/String; = "video_file_path"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onStopRecording(Lcom/google/glass/camera/Video;ZZ)V
    .locals 3
    .parameter "video"
    .parameter "reachedMaxDuration"
    .parameter "storageFull"

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    .local v0, resultData:Landroid/content/Intent;
    const-string v1, "video_file_path"

    invoke-virtual {p1}, Lcom/google/glass/camera/Video;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/camera/VideoSubroutineActivity;->setResult(ILandroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/glass/camera/VideoSubroutineActivity;->finishAndTurnScreenOffIfRequested()V

    .line 25
    return-void
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method
