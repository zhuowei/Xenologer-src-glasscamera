.class public Lcom/google/glass/camera/RecordVideoActivity;
.super Lcom/google/glass/camera/BaseRecordVideoActivity;
.source "RecordVideoActivity.java"


# instance fields
.field private final timelineExecutor:Ljava/util/concurrent/ExecutorService;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/google/glass/util/PriorityThreadFactory;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/timelineExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/camera/RecordVideoActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/camera/RecordVideoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordVideoActivity;->finishAndTurnScreenOffIfRequested()V

    return-void
.end method

.method static createVideoItem(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/camera/Video;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 5
    .parameter "context"
    .parameter "timelineHelper"
    .parameter "video"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 91
    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p1, p0, v3}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    .line 95
    .local v1, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SHARE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 96
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 99
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/glass/camera/Video;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 103
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 106
    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->OPPORTUNISTIC:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 109
    invoke-virtual {p2}, Lcom/google/glass/camera/Video;->getEndTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 110
    invoke-virtual {p2}, Lcom/google/glass/camera/Video;->getEndTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 112
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    .line 115
    .local v2, videoItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget-object v3, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->VIDEO:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    const/4 v4, 0x0

    invoke-virtual {p1, p0, v2, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 117
    return-object v2
.end method


# virtual methods
.method protected onStopRecording(Lcom/google/glass/camera/Video;ZZ)V
    .locals 3
    .parameter "video"
    .parameter "reachedMaxDuration"
    .parameter "storageFull"

    .prologue
    .line 43
    new-instance v0, Lcom/google/glass/camera/RecordVideoActivity$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/camera/RecordVideoActivity$1;-><init>(Lcom/google/glass/camera/RecordVideoActivity;Lcom/google/glass/camera/Video;ZZ)V

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity;->timelineExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/RecordVideoActivity$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void
.end method
