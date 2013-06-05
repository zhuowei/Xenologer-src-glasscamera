.class public Lcom/google/glass/camera/TakePictureActivity;
.super Lcom/google/glass/camera/BaseTakePictureActivity;
.source "TakePictureActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final THUMBNAIL_JPEG_QUALITY:I = 0x5a


# instance fields
.field private optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field private pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private final timelineExecutor:Ljava/util/concurrent/ExecutorService;

.field private timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/glass/camera/TakePictureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/TakePictureActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/google/glass/util/PriorityThreadFactory;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/glass/camera/TakePictureActivity;->TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/camera/TakePictureActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->finishAndTurnScreenOffIfRequested()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity;->pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/camera/TakePictureActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static createPictureItem(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 3
    .parameter "context"
    .parameter "timelineHelper"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 202
    sget-object v1, Lcom/google/glass/camera/TakePictureActivity;->TAG:Ljava/lang/String;

    const-string v2, "Creating the picture timeline item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v1, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p1, p0, v1}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 207
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 210
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SHARE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 211
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 213
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    return-object v1
.end method

.method static updatePictureItemWhenSaved(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/camera/Picture;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 5
    .parameter "context"
    .parameter "timelineHelper"
    .parameter "itemBuilder"
    .parameter "picture"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 298
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 300
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, itemId:Ljava/lang/String;
    new-instance v1, Lcom/google/glass/camera/TakePictureActivity$5;

    invoke-direct {v1, v0, p1, p0, p3}, Lcom/google/glass/camera/TakePictureActivity$5;-><init>(Ljava/lang/String;Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/glass/camera/Picture;)V

    .line 335
    .local v1, update:Lcom/google/glass/timeline/TimelineHelper$Update;
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 336
    invoke-virtual {v1}, Lcom/google/glass/timeline/TimelineHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    .line 340
    .local v2, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    :cond_0
    sget-object v3, Lcom/google/glass/camera/TakePictureActivity;->TAG:Ljava/lang/String;

    const-string v4, "Did not update item with full picture, because it no longer exists."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v2, 0x0

    .line 345
    .end local v2           #updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_1
    return-object v2
.end method

.method static updatePictureItemWhenTaken(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/util/CachedFilesManager;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/camera/Picture;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 7
    .parameter "context"
    .parameter "timelineHelper"
    .parameter "cachedFilesManager"
    .parameter "itemBuilder"
    .parameter "picture"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 230
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 231
    sget-object v1, Lcom/google/glass/camera/TakePictureActivity;->TAG:Ljava/lang/String;

    const-string v2, "Attaching the thumbnmail to the picture timeline item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Lcom/google/glass/camera/TakePictureActivity$4;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/camera/TakePictureActivity$4;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/camera/Picture;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;)V

    .line 271
    .local v0, update:Lcom/google/glass/timeline/TimelineHelper$Update;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 272
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    .line 276
    .local v6, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    sget-object v1, Lcom/google/glass/camera/TakePictureActivity;->TAG:Ljava/lang/String;

    const-string v2, "Did not update item with thumbnail, because it no longer exists."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v6, 0x0

    .line 281
    .end local v6           #updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_1
    return-object v6
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 92
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->finishAndTurnScreenOffIfRequested()V

    .line 95
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 67
    new-instance v0, Lcom/google/glass/timeline/TimelineOptionsHelper;

    new-instance v1, Lcom/google/glass/util/IconProvider;

    invoke-direct {v1, p0}, Lcom/google/glass/util/IconProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/IconProvider;)V

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->handlePrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 3
    .parameter "selectedOptionMenuItem"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    new-instance v2, Lcom/google/glass/camera/TakePictureActivity$1;

    invoke-direct {v2, p0}, Lcom/google/glass/camera/TakePictureActivity$1;-><init>(Lcom/google/glass/camera/TakePictureActivity;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/widget/OptionMenu$Item;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)Z

    move-result v0

    return v0
.end method

.method protected onPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 3
    .parameter "picture"

    .prologue
    .line 163
    new-instance v0, Lcom/google/glass/camera/TakePictureActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/TakePictureActivity$3;-><init>(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/glass/camera/Picture;)V

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/TakePictureActivity$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    return-void
.end method

.method protected onPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 3
    .parameter "picture"

    .prologue
    .line 132
    new-instance v0, Lcom/google/glass/camera/TakePictureActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/TakePictureActivity$2;-><init>(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/glass/camera/Picture;)V

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/TakePictureActivity$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity;->pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->handlePrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/google/glass/camera/R$layout;->take_picture_activity:I

    return v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 99
    const-string v0, "should_finish_turn_screen_off"

    invoke-virtual {p0}, Lcom/google/glass/camera/TakePictureActivity;->shouldFinishTurnScreenOff()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    invoke-super {p0, p1, p2}, Lcom/google/glass/camera/BaseTakePictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    return-void
.end method

.method public takePicture()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    invoke-static {p0, v0}, Lcom/google/glass/camera/TakePictureActivity;->createPictureItem(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity;->pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 115
    invoke-super {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->takePicture()V

    .line 116
    return-void
.end method
