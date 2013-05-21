.class Lcom/google/glass/camera/RecordClipletActivity$1;
.super Landroid/os/AsyncTask;
.source "RecordClipletActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/RecordClipletActivity;->onClipletRecorded(Lcom/google/glass/camera/Video;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/googlex/glass/common/proto/TimelineItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/RecordClipletActivity;

.field final synthetic val$video:Lcom/google/glass/camera/Video;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/RecordClipletActivity;Lcom/google/glass/camera/Video;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/glass/camera/RecordClipletActivity$1;->this$0:Lcom/google/glass/camera/RecordClipletActivity;

    iput-object p2, p0, Lcom/google/glass/camera/RecordClipletActivity$1;->val$video:Lcom/google/glass/camera/Video;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 5
    .parameter "params"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/google/glass/camera/RecordClipletActivity$1;->this$0:Lcom/google/glass/camera/RecordClipletActivity;

    iget-object v2, p0, Lcom/google/glass/camera/RecordClipletActivity$1;->val$video:Lcom/google/glass/camera/Video;

    #calls: Lcom/google/glass/camera/RecordClipletActivity;->createClipletVideoItem(Lcom/google/glass/camera/Video;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v1, v2}, Lcom/google/glass/camera/RecordClipletActivity;->access$000(Lcom/google/glass/camera/RecordClipletActivity;Lcom/google/glass/camera/Video;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 80
    .local v0, clipletItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v1, p0, Lcom/google/glass/camera/RecordClipletActivity$1;->this$0:Lcom/google/glass/camera/RecordClipletActivity;

    #getter for: Lcom/google/glass/camera/RecordClipletActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v1}, Lcom/google/glass/camera/RecordClipletActivity;->access$100(Lcom/google/glass/camera/RecordClipletActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/RecordClipletActivity$1;->this$0:Lcom/google/glass/camera/RecordClipletActivity;

    sget-object v3, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->VIDEO:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 82
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/RecordClipletActivity$1;->doInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/camera/RecordClipletActivity$1;->this$0:Lcom/google/glass/camera/RecordClipletActivity;

    iput-object p1, v0, Lcom/google/glass/camera/RecordClipletActivity;->clipletItemForTest:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 88
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/RecordClipletActivity$1;->onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    return-void
.end method
