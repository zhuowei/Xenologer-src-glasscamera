.class Lcom/google/glass/camera/BaseRecordVideoActivity$1;
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
    .line 72
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->getElapsedRecordingTime()J
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v1

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->setTimer(J)V
    invoke-static {v0, v1, v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$100(Lcom/google/glass/camera/BaseRecordVideoActivity;J)V

    .line 80
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$300()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #getter for: Lcom/google/glass/camera/BaseRecordVideoActivity;->elapsedTimeRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$200(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return-void
.end method
