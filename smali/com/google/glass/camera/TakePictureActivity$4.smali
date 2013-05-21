.class final Lcom/google/glass/camera/TakePictureActivity$4;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "TakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->updatePictureItemWhenTaken(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/util/CachedFilesManager;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/camera/Picture;)Lcom/google/googlex/glass/common/proto/TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

.field final synthetic val$picture:Lcom/google/glass/camera/Picture;

.field final synthetic val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/camera/Picture;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    iput-object p2, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$picture:Lcom/google/glass/camera/Picture;

    iput-object p3, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    iput-object p4, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iput-object p5, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 8

    .prologue
    .line 233
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, pictureFileName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v4}, Lcom/google/glass/camera/Picture;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 235
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v5, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    new-instance v6, Lcom/google/glass/camera/TakePictureActivity$4$1;

    invoke-direct {v6, p0, v2}, Lcom/google/glass/camera/TakePictureActivity$4$1;-><init>(Lcom/google/glass/camera/TakePictureActivity$4;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5, v1, v6}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 249
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v6, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v5, v6, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v4

    const-string v5, "image/jpeg"

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 252
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    invoke-virtual {v4, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 255
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v5}, Lcom/google/glass/camera/Picture;->getCaptureTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 256
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v5}, Lcom/google/glass/camera/Picture;->getCaptureTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 258
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    .line 261
    .local v3, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$4;->val$context:Landroid/content/Context;

    sget-object v6, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->PHOTO:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 263
    return-object v3
.end method
