.class Lcom/google/glass/camera/TakePictureActivity$3;
.super Lcom/google/glass/util/SerialAsyncTask;
.source "TakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->onPictureSaved(Lcom/google/glass/camera/Picture;)V
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
    .line 161
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iput-object p2, p0, Lcom/google/glass/camera/TakePictureActivity$3;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-direct {p0}, Lcom/google/glass/util/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs serialDoInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 4
    .parameter "params"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    #getter for: Lcom/google/glass/camera/TakePictureActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v1}, Lcom/google/glass/camera/TakePictureActivity;->access$100(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$3;->itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$3;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/camera/TakePictureActivity;->updatePictureItemWhenSaved(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/camera/Picture;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/TakePictureActivity$3;->serialDoInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected serialOnPostExecute(Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 179
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 182
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iput-object p1, v0, Lcom/google/glass/camera/TakePictureActivity;->pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 183
    return-void
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/TakePictureActivity$3;->serialOnPostExecute(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    return-void
.end method

.method protected serialOnPreExecute()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/TakePictureActivity;->pictureItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$3;->itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 167
    return-void
.end method
