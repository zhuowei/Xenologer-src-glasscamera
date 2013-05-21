.class public Lcom/google/glass/camera/RecordClipletActivity;
.super Lcom/google/glass/camera/BaseTakePictureActivity;
.source "RecordClipletActivity.java"


# instance fields
.field clipletItemForTest:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;-><init>()V

    .line 24
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/RecordClipletActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/camera/RecordClipletActivity;Lcom/google/glass/camera/Video;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/glass/camera/RecordClipletActivity;->createClipletVideoItem(Lcom/google/glass/camera/Video;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/camera/RecordClipletActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/camera/RecordClipletActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method private createClipletVideoItem(Lcom/google/glass/camera/Video;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 5
    .parameter "video"

    .prologue
    .line 51
    iget-object v2, p0, Lcom/google/glass/camera/RecordClipletActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/camera/RecordClipletActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, p0, v3}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    .line 55
    .local v1, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SHARE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 56
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 59
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/camera/Video;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 63
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 66
    sget-object v2, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->OPPORTUNISTIC:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 68
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 33
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordClipletActivity;->finishAndTurnScreenOffIfRequested()V

    .line 36
    :cond_0
    return-void
.end method

.method protected onClipletRecorded(Lcom/google/glass/camera/Video;)V
    .locals 3
    .parameter "video"

    .prologue
    .line 74
    new-instance v0, Lcom/google/glass/camera/RecordClipletActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/RecordClipletActivity$1;-><init>(Lcom/google/glass/camera/RecordClipletActivity;Lcom/google/glass/camera/Video;)V

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/RecordClipletActivity$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 40
    const-string v0, "should_finish_turn_screen_off"

    invoke-virtual {p0}, Lcom/google/glass/camera/RecordClipletActivity;->shouldFinishTurnScreenOff()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    invoke-super {p0, p1, p2}, Lcom/google/glass/camera/BaseTakePictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 42
    return-void
.end method
