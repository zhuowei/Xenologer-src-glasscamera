.class Lcom/google/glass/camera/TakePictureActivity$2;
.super Lcom/google/glass/util/SerialAsyncTask;
.source "TakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->onPictureTaken(Lcom/google/glass/camera/Picture;)V
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
.field private itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

.field final synthetic this$0:Lcom/google/glass/camera/TakePictureActivity;

.field final synthetic val$picture:Lcom/google/glass/camera/Picture;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/glass/camera/Picture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$2;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iput-object p2, p0, Lcom/google/glass/camera/TakePictureActivity$2;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-direct {p0}, Lcom/google/glass/util/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs serialDoInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 5
    .parameter "params"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$2;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$2;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    #getter for: Lcom/google/glass/camera/TakePictureActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v1}, Lcom/google/glass/camera/TakePictureActivity;->access$100(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$2;->itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$2;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/camera/TakePictureActivity;->updatePictureItemWhenTaken(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/util/CachedFilesManager;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/camera/Picture;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/TakePictureActivity$2;->serialDoInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected serialOnPostExecute(Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 151
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 154
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$2;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iput-object p1, v0, Lcom/google/glass/camera/TakePictureActivity;->pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 155
    return-void
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/TakePictureActivity$2;->serialOnPostExecute(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    return-void
.end method

.method protected serialOnPreExecute()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$2;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/TakePictureActivity;->pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$2;->itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 139
    return-void
.end method
