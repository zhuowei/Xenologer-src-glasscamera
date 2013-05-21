.class Lcom/google/glass/camera/BaseTakePictureActivity$2$1;
.super Landroid/os/AsyncTask;
.source "BaseTakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/BaseTakePictureActivity$2;->onPictureSaved(Lcom/google/glass/camera/Picture;)V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/BaseTakePictureActivity$2;

.field final synthetic val$picture:Lcom/google/glass/camera/Picture;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseTakePictureActivity$2;Lcom/google/glass/camera/Picture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->this$1:Lcom/google/glass/camera/BaseTakePictureActivity$2;

    iput-object p2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "params"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->this$1:Lcom/google/glass/camera/BaseTakePictureActivity$2;

    iget-object v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v1}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "result"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->this$1:Lcom/google/glass/camera/BaseTakePictureActivity$2;

    iget-object v1, v1, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    sget v2, Lcom/google/glass/camera/R$id;->final_image:I

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/BaseTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->this$1:Lcom/google/glass/camera/BaseTakePictureActivity$2;

    iget-object v2, v2, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v2}, Lcom/google/glass/camera/BaseTakePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/camera/R$integer;->take_picture_show_final_image_fade_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, p1, v2, v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->fadeInImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;J)V

    .line 117
    const-string v2, "s"

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v1}, Lcom/google/glass/camera/Picture;->getShutterTime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v1}, Lcom/google/glass/camera/Picture;->getRequestTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x8

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "t"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v5}, Lcom/google/glass/camera/Picture;->getThumbnailTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v7}, Lcom/google/glass/camera/Picture;->getRequestTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "j"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v5}, Lcom/google/glass/camera/Picture;->getJpegTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v7}, Lcom/google/glass/camera/Picture;->getRequestTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "c"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    iget-object v5, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v5}, Lcom/google/glass/camera/Picture;->getCaptureTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "g"

    aput-object v5, v4, v1

    const/4 v5, 0x7

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v1}, Lcom/google/glass/camera/Picture;->getIsGcam()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, timingData:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->this$1:Lcom/google/glass/camera/BaseTakePictureActivity$2;

    iget-object v1, v1, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    sget-object v2, Lcom/google/glass/logging/UserEventAction;->CAMERA_TIMINGS:Lcom/google/glass/logging/UserEventAction;

    #calls: Lcom/google/glass/camera/BaseTakePictureActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$500(Lcom/google/glass/camera/BaseTakePictureActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 129
    return-void

    .line 117
    .end local v0           #timingData:Ljava/lang/String;
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
