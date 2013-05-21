.class public abstract Lcom/google/glass/camera/BaseRecordVideoActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "BaseRecordVideoActivity.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DELAY_TO_HIDE_TIP_MS:J = 0x0L

.field private static final DELAY_TO_SHOW_TIP_MS:J = 0x3e8L

.field private static final DELAY_TO_START_TIP_FADE_MS:J = 0x3eL

.field public static final EXTRA_SHOULD_PLAY_INITIAL_SOUND:Ljava/lang/String; = "should_play_initial_sound"

.field private static final PROGRESS_BAR_UPDATE_MS:J = 0x1eL

#the value of this static final field might be set in the static constructor
.field private static final SHORT_VIDEO_DURATION_MS:J = 0x0L

.field private static final TIP_ANIMATION_LENGTH_MS:J = 0xfaL

.field private static mainHandler:Landroid/os/Handler;


# instance fields
.field private final camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

.field private final elapsedTimeRunnable:Ljava/lang/Runnable;

.field private final hideTipRunnable:Ljava/lang/Runnable;

.field private isAutoStopPaused:Z

.field private isRecordingVideo:Z

.field private isVideoExtended:Z

.field private progressView:Lcom/google/glass/widget/SliderView;

.field private final recordClient:Lcom/google/glass/camera/SharedCameraClient;

.field private final shortVideoRunnable:Ljava/lang/Runnable;

.field private shouldPlayInitialSound:Z

.field private final showTipRunnable:Ljava/lang/Runnable;

.field private startAutoStopPaused:J

.field private startRecordingRequestTime:J

.field private startRecordingTime:J

.field private timeAutoStopPausedMillis:J

.field private timerWrapper:Landroid/view/View;

.field private videoRecordingStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->SHORT_VIDEO_DURATION_MS:J

    .line 54
    sget-wide v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->SHORT_VIDEO_DURATION_MS:J

    sub-long/2addr v0, v3

    sub-long/2addr v0, v3

    sput-wide v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->DELAY_TO_HIDE_TIP_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$1;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->elapsedTimeRunnable:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$2;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shortVideoRunnable:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$3;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->showTipRunnable:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$4;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$4;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->hideTipRunnable:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$5;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordClient:Lcom/google/glass/camera/SharedCameraClient;

    .line 250
    new-instance v0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    invoke-direct {v0}, Lcom/google/glass/camera/SharedCameraService$SharedCamera;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getElapsedRecordingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/glass/camera/BaseRecordVideoActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->setTimer(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shortVideoRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/camera/BaseRecordVideoActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->timerWrapper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->hideTipRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300()J
    .locals 2

    .prologue
    .line 33
    sget-wide v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->DELAY_TO_HIDE_TIP_MS:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/google/glass/camera/BaseRecordVideoActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/google/glass/camera/BaseRecordVideoActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingTime:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/google/glass/camera/BaseRecordVideoActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->videoRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/google/glass/camera/BaseRecordVideoActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isRecordingVideo:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->startTimer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/logging/UserEventAction;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->clearExtendVideoRelatedRunnablesFromHandler()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->elapsedTimeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->showTipRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopTimer()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/glass/camera/BaseRecordVideoActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingRequestTime:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/camera/BaseRecordVideoActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->timeAutoStopPausedMillis:J

    return-wide v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 33
    sget-wide v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->SHORT_VIDEO_DURATION_MS:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecording()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method private clearExtendVideoRelatedRunnablesFromHandler()V
    .locals 2

    .prologue
    .line 501
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shortVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->showTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 503
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->hideTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method

.method private extendVideo()V
    .locals 2

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    .line 418
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->clearExtendVideoRelatedRunnablesFromHandler()V

    .line 419
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->hideTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->dismissManualProgress()V

    .line 424
    return-void
.end method

.method private getElapsedRecordingTime()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 496
    .local v0, now:J
    iget-wide v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->videoRecordingStartTime:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->videoRecordingStartTime:J

    sub-long v2, v0, v2

    :cond_0
    return-wide v2
.end method

.method private pauseAutoStop()V
    .locals 2

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    if-nez v0, :cond_0

    .line 429
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z

    if-nez v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->clearExtendVideoRelatedRunnablesFromHandler()V

    .line 431
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getElapsedRecordingTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startAutoStopPaused:J

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z

    .line 435
    :cond_0
    return-void
.end method

.method private resumeAutoStop()V
    .locals 6

    .prologue
    .line 439
    iget-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    if-nez v2, :cond_0

    .line 440
    iget-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z

    if-eqz v2, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getElapsedRecordingTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startAutoStopPaused:J

    sub-long v0, v2, v4

    .line 442
    .local v0, paused:J
    iget-wide v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->timeAutoStopPausedMillis:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->timeAutoStopPausedMillis:J

    .line 443
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z

    .line 444
    sget-object v2, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shortVideoRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 445
    sget-object v2, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->showTipRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 448
    .end local v0           #paused:J
    :cond_0
    return-void
.end method

.method private setTimer(J)V
    .locals 2
    .parameter "elapsedTimeMillis"

    .prologue
    .line 456
    sget v1, Lcom/google/glass/camera/R$id;->recording_time:I

    invoke-virtual {p0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 457
    .local v0, videoRecordingTimerView:Landroid/widget/TextView;
    invoke-static {p1, p2}, Lcom/google/glass/util/DateHelper;->getVideoRecordingTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    return-void
.end method

.method private startTimer()V
    .locals 2

    .prologue
    .line 406
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->elapsedTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->elapsedTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method

.method private stopRecording()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->stopRecording(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 402
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    .line 412
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->elapsedTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method


# virtual methods
.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    if-nez v0, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->extendVideo()V

    .line 471
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecording()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 254
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 255
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    sput-object v3, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    .line 256
    sget v3, Lcom/google/glass/camera/R$id;->progress:I

    invoke-virtual {p0, v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/SliderView;

    iput-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/SliderView;

    .line 257
    sget v3, Lcom/google/glass/camera/R$id;->recording_time_wrapper:I

    invoke-virtual {p0, v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->timerWrapper:Landroid/view/View;

    .line 260
    sget v3, Lcom/google/glass/camera/R$id;->viewfinder:I

    invoke-virtual {p0, v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    .line 261
    .local v2, viewfinderView:Landroid/view/TextureView;
    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v3, v2}, Lcom/google/glass/camera/SharedCameraClient;->setViewfinder(Landroid/view/TextureView;)V

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/camera/SharedCameraService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .local v0, cameraService:Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/glass/camera/BaseRecordVideoActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 270
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 271
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 272
    iput-boolean v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldPlayInitialSound:Z

    .line 277
    :goto_0
    new-instance v3, Lcom/google/glass/util/StorageHelper;

    invoke-direct {v3, p0}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/glass/util/StorageHelper;->showDialogIfFull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Storage is full, not recording the video"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/logging/UserEventAction;

    const-string v4, "2"

    invoke-virtual {p0, v3, v4}, Lcom/google/glass/camera/BaseRecordVideoActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->finish()V

    .line 283
    :cond_0
    return-void

    .line 274
    :cond_1
    const-string v3, "should_play_initial_sound"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldPlayInitialSound:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isRecordingVideo:Z

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onDisallowedInput()V

    .line 333
    const/4 v0, 0x0

    .line 337
    :goto_0
    return v0

    .line 336
    :cond_0
    sget v0, Lcom/google/glass/camera/R$menu;->record_video_menu:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->inflateFrom(I)V

    .line 337
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 326
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroy()V

    .line 327
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 367
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/camera/R$id;->stop_recording:I

    if-ne v1, v2, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecording()V

    .line 374
    :goto_0
    return v0

    .line 370
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/camera/R$id;->extend_video:I

    if-ne v1, v2, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->extendVideo()V

    goto :goto_0

    .line 374
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->resumeAutoStop()V

    .line 362
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V

    .line 363
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 313
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 317
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->setMuted(Z)V

    .line 318
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 344
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->pauseAutoStop()V

    .line 347
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    .line 348
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v2

    sget v4, Lcom/google/glass/camera/R$id;->extend_video:I

    if-ne v2, v4, :cond_0

    .line 349
    iget-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 353
    .end local v1           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_1
    return v3

    .line 349
    .restart local v1       #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 297
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStart()V

    .line 300
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecording()V

    .line 301
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecording()V

    .line 308
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStop()V

    .line 309
    return-void
.end method

.method protected onStopRecording(Lcom/google/glass/camera/Video;ZZ)V
    .locals 0
    .parameter "video"
    .parameter "reachedMaxDuration"
    .parameter "storageFull"

    .prologue
    .line 510
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 287
    sget v0, Lcom/google/glass/camera/R$layout;->record_video_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isRecordingVideo:Z

    return v0
.end method

.method protected shouldAllowDismiss()Z
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldAllowHorizontalTugging()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldAllowLongPress()Z
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method protected startRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 379
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldPlayInitialSound:Z

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_START:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 384
    :cond_0
    iput-wide v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->videoRecordingStartTime:J

    .line 385
    invoke-direct {p0, v2, v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->setTimer(J)V

    .line 386
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->clearExtendVideoRelatedRunnablesFromHandler()V

    .line 387
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/SliderView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 388
    iput-boolean v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    .line 389
    iput-boolean v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z

    .line 390
    iput-wide v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->timeAutoStopPausedMillis:J

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingRequestTime:J

    .line 394
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->startRecording(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 395
    return-void
.end method
