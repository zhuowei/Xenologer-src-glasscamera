.class Lcom/google/glass/camera/BaseTakePictureActivity$2;
.super Lcom/google/glass/camera/SharedCameraClient;
.source "BaseTakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseTakePictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseTakePictureActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    #calls: Lcom/google/glass/camera/BaseTakePictureActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$500(Lcom/google/glass/camera/BaseTakePictureActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cameraClient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onBarcodeFound(Lcom/google/android/libraries/barhopper/Barcode;)V
    .locals 1
    .parameter "barcode"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->qrHelper:Lcom/google/glass/barcode/QrHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/barcode/QrHelper;->sendBarcode(Lcom/google/android/libraries/barhopper/Barcode;)V

    .line 145
    return-void
.end method

.method protected onCameraError(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->isTakingPicture:Z

    .line 159
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    sget-object v1, Lcom/google/glass/logging/GlassError;->CAMERA_ERROR:Lcom/google/glass/logging/GlassError;

    invoke-static {v0, v1}, Lcom/google/glass/logging/GlassError;->report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    .line 160
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->finish()V

    .line 161
    return-void
.end method

.method protected onCameraShutter()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_SHUTTER:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 152
    return-void
.end method

.method protected onClipletRecorded(Lcom/google/glass/camera/Video;)V
    .locals 1
    .parameter "video"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onClipletRecorded(Lcom/google/glass/camera/Video;)V

    .line 138
    return-void
.end method

.method protected onPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 3
    .parameter "picture"

    .prologue
    .line 98
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 100
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity$2;Lcom/google/glass/camera/Picture;)V

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    #getter for: Lcom/google/glass/camera/BaseTakePictureActivity;->decodeExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$400(Lcom/google/glass/camera/BaseTakePictureActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/BaseTakePictureActivity$2$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onPictureSaved(Lcom/google/glass/camera/Picture;)V

    .line 133
    return-void
.end method

.method protected onPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 5
    .parameter "picture"

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 80
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    sget v1, Lcom/google/glass/camera/R$id;->thumbnail:I

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v2}, Lcom/google/glass/camera/BaseTakePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/camera/R$integer;->take_picture_show_thumbnail_fade_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->fadeInImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;J)V

    .line 84
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    #getter for: Lcom/google/glass/camera/BaseTakePictureActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$200(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    #getter for: Lcom/google/glass/camera/BaseTakePictureActivity;->dismissRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$100(Lcom/google/glass/camera/BaseTakePictureActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v2}, Lcom/google/glass/camera/BaseTakePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/camera/R$integer;->show_picture_timeout_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iput-boolean v4, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->isTakingPicture:Z

    .line 91
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    #calls: Lcom/google/glass/camera/BaseTakePictureActivity;->getContentView()Landroid/view/View;
    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$300(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 93
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onPictureTaken(Lcom/google/glass/camera/Picture;)V

    .line 94
    return-void
.end method
