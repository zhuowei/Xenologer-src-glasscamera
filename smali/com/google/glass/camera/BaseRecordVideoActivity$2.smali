.class Lcom/google/glass/camera/BaseRecordVideoActivity$2;
.super Ljava/lang/Object;
.source "BaseRecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 85
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 88
    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z
    invoke-static {v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z
    invoke-static {v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$500(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->getElapsedRecordingTime()J
    invoke-static {v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->timeAutoStopPausedMillis:J
    invoke-static {v5}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$600(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 90
    .local v0, elapsed:J
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$700()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecording()V
    invoke-static {v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$800(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 100
    .end local v0           #elapsed:J
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v0       #elapsed:J
    :cond_1
    long-to-float v3, v0

    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$700()J

    move-result-wide v4

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 95
    .local v2, progress:F
    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/SliderView;
    invoke-static {v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$900(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/glass/widget/SliderView;->setManualProgress(F)V

    .line 97
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$300()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->shortVideoRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x1e

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
