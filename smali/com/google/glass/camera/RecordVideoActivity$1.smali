.class Lcom/google/glass/camera/RecordVideoActivity$1;
.super Lcom/google/glass/util/SerialAsyncTask;
.source "RecordVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/RecordVideoActivity;->onStopRecording(Lcom/google/glass/camera/Video;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/SerialAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/googlex/glass/common/proto/TimelineItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/RecordVideoActivity;

.field final synthetic val$reachedMaxDuration:Z

.field final synthetic val$storageFull:Z

.field final synthetic val$video:Lcom/google/glass/camera/Video;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/RecordVideoActivity;Lcom/google/glass/camera/Video;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    iput-object p2, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->val$video:Lcom/google/glass/camera/Video;

    iput-boolean p3, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->val$reachedMaxDuration:Z

    iput-boolean p4, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->val$storageFull:Z

    invoke-direct {p0}, Lcom/google/glass/util/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs serialDoInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 3
    .parameter "params"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    #getter for: Lcom/google/glass/camera/RecordVideoActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v1}, Lcom/google/glass/camera/RecordVideoActivity;->access$000(Lcom/google/glass/camera/RecordVideoActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->val$video:Lcom/google/glass/camera/Video;

    invoke-static {v0, v1, v2}, Lcom/google/glass/camera/RecordVideoActivity;->createVideoItem(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/camera/Video;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/RecordVideoActivity$1;->serialDoInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected serialOnPostExecute(Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->val$reachedMaxDuration:Z

    if-nez v0, :cond_0

    .line 70
    iget-boolean v0, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->val$storageFull:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordVideoActivity;->finish()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    #calls: Lcom/google/glass/camera/RecordVideoActivity;->finishAndTurnScreenOffIfRequested()V
    invoke-static {v0}, Lcom/google/glass/camera/RecordVideoActivity;->access$100(Lcom/google/glass/camera/RecordVideoActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/RecordVideoActivity$1;->serialOnPostExecute(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    return-void
.end method

.method protected serialOnPreExecute()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->val$video:Lcom/google/glass/camera/Video;

    invoke-virtual {v0}, Lcom/google/glass/camera/Video;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/RecordVideoActivity$1;->cancel(Z)Z

    .line 51
    :cond_0
    return-void
.end method
