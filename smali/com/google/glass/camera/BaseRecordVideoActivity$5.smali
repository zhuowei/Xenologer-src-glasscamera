.class Lcom/google/glass/camera/BaseRecordVideoActivity$5;
.super Lcom/google/glass/camera/SharedCameraClient;
.source "BaseRecordVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2700(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recordClient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCameraError(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->setMuted(Z)V

    .line 236
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #setter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->isRecordingVideo:Z
    invoke-static {v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1602(Lcom/google/glass/camera/BaseRecordVideoActivity;Z)Z

    .line 237
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->stopTimer()V
    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2100(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 238
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->closeOptionsMenu()V

    .line 239
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    sget-object v1, Lcom/google/glass/logging/GlassError;->CAMERA_ERROR:Lcom/google/glass/logging/GlassError;

    invoke-static {v0, v1}, Lcom/google/glass/logging/GlassError;->report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    .line 240
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->finish()V

    .line 241
    return-void
.end method

.method protected onStartRecording(Lcom/google/glass/camera/Video;)V
    .locals 4
    .parameter "video"

    .prologue
    const/4 v3, 0x1

    .line 168
    invoke-super {p0, p1}, Lcom/google/glass/camera/SharedCameraClient;->onStartRecording(Lcom/google/glass/camera/Video;)V

    .line 170
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingTime:J
    invoke-static {v0, v1, v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1402(Lcom/google/glass/camera/BaseRecordVideoActivity;J)J

    .line 173
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/sound/SoundManager;->setMuted(Z)V

    .line 175
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->videoRecordingStartTime:J
    invoke-static {v0, v1, v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1502(Lcom/google/glass/camera/BaseRecordVideoActivity;J)J

    .line 176
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #setter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->isRecordingVideo:Z
    invoke-static {v0, v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1602(Lcom/google/glass/camera/BaseRecordVideoActivity;Z)Z

    .line 177
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->startTimer()V
    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1700(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 178
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->RECORD_VIDEO_START:Lcom/google/glass/logging/UserEventAction;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V
    invoke-static {v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1800(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/logging/UserEventAction;)V

    .line 181
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z
    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/SliderView;
    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$900(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setManualProgress(F)V

    .line 183
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/SliderView;
    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$900(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->clearExtendVideoRelatedRunnablesFromHandler()V
    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1900(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 185
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$300()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->shortVideoRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$300()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->showTipRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    :cond_0
    return-void
.end method

.method protected onStopRecording(Lcom/google/glass/camera/Video;ZZ)V
    .locals 10
    .parameter "video"
    .parameter "reachedMaxDuration"
    .parameter "storageFull"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 193
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/camera/SharedCameraClient;->onStopRecording(Lcom/google/glass/camera/Video;ZZ)V

    .line 196
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/glass/sound/SoundManager;->setMuted(Z)V

    .line 198
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->clearExtendVideoRelatedRunnablesFromHandler()V
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1900(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 199
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/SliderView;
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$900(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 203
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->stopTimer()V
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2100(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 204
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->closeOptionsMenu()V

    .line 205
    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    sget-object v3, Lcom/google/glass/logging/UserEventAction;->RECORD_VIDEO_END:Lcom/google/glass/logging/UserEventAction;

    const-string v4, "l"

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->getElapsedRecordingTime()J
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const-string v1, "e"

    aput-object v1, v6, v8

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_0
    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2200(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #setter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->isRecordingVideo:Z
    invoke-static {v1, v8}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1602(Lcom/google/glass/camera/BaseRecordVideoActivity;Z)Z

    .line 211
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onStopRecording(Lcom/google/glass/camera/Video;ZZ)V

    .line 213
    if-eqz p3, :cond_0

    .line 214
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    sget-object v2, Lcom/google/glass/logging/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/logging/UserEventAction;

    const-string v3, "3"

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2300(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    sget-object v3, Lcom/google/glass/logging/UserEventAction;->RECORD_VIDEO_END:Lcom/google/glass/logging/UserEventAction;

    const-string v4, "l"

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->getElapsedRecordingTime()J
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/Object;

    const-string v1, "e"

    aput-object v1, v6, v8

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    :goto_1
    aput-object v1, v6, v7

    const-string v1, "c"

    aput-object v1, v6, v9

    const/4 v7, 0x3

    invoke-virtual {p1}, Lcom/google/glass/camera/Video;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    :goto_2
    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2400(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 225
    const-string v1, "st"

    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingTime:J
    invoke-static {v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1400(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingRequestTime:J
    invoke-static {v4}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2500(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, timingData:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    sget-object v2, Lcom/google/glass/logging/UserEventAction;->VIDEO_TIMINGS:Lcom/google/glass/logging/UserEventAction;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2600(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 229
    return-void

    .line 205
    .end local v0           #timingData:Ljava/lang/String;
    :cond_1
    const-string v1, "0"

    goto :goto_0

    .line 219
    :cond_2
    const-string v1, "0"

    goto :goto_1

    :cond_3
    const-string v1, "0"

    goto :goto_2
.end method
