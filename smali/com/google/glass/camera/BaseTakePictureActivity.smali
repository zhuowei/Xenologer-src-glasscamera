.class public abstract Lcom/google/glass/camera/BaseTakePictureActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "BaseTakePictureActivity.java"


# instance fields
.field private final camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

.field final cameraClient:Lcom/google/glass/camera/SharedCameraClient;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final decodeExecutor:Ljava/util/concurrent/ExecutorService;

.field private final dismissRunnable:Ljava/lang/Runnable;

.field isTakingPicture:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field protected qrHelper:Lcom/google/glass/barcode/QrHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private shouldPlayInitialSound:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->mainHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/google/glass/util/PriorityThreadFactory;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/decodeExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->decodeExecutor:Ljava/util/concurrent/ExecutorService;

    .line 59
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseTakePictureActivity$1;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->dismissRunnable:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseTakePictureActivity$2;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/SharedCameraClient;

    .line 170
    new-instance v0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    invoke-direct {v0}, Lcom/google/glass/camera/SharedCameraService$SharedCamera;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->finishAndTurnScreenOffIfRequested()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/camera/BaseTakePictureActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->dismissRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/camera/BaseTakePictureActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->decodeExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/camera/BaseTakePictureActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/BaseTakePictureActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/camera/BaseTakePictureActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fadeInImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;J)V
    .locals 2
    .parameter "imageView"
    .parameter "image"
    .parameter "duration"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 329
    if-eqz p0, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 333
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method getCamera()Lcom/google/glass/camera/SharedCameraService$SharedCamera;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    return-object v0
.end method

.method protected onClipletRecorded(Lcom/google/glass/camera/Video;)V
    .locals 0
    .parameter "video"

    .prologue
    .line 261
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 181
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    :cond_0
    new-instance v2, Lcom/google/glass/barcode/QrHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/barcode/QrHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->qrHelper:Lcom/google/glass/barcode/QrHelper;

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/camera/SharedCameraService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v0, cameraService:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getCamera()Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 191
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 196
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 197
    iput-boolean v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPlayInitialSound:Z

    .line 203
    :goto_0
    new-instance v2, Lcom/google/glass/util/StorageHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/glass/util/StorageHelper;->showDialogIfFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Storage is full, not taking the picture"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/logging/UserEventAction;

    const-string v3, "1"

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->finish()V

    .line 209
    :cond_1
    return-void

    .line 199
    :cond_2
    const-string v2, "should_play_initial_sound"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPlayInitialSound:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getCamera()Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 242
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroy()V

    .line 245
    :cond_0
    return-void
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 2
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->dismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->dismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 233
    :cond_0
    return-void
.end method

.method protected onPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 0
    .parameter "picture"

    .prologue
    .line 256
    return-void
.end method

.method protected onPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 0
    .parameter "picture"

    .prologue
    .line 250
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->takePicture()V

    .line 221
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 274
    sget v0, Lcom/google/glass/camera/R$layout;->take_picture_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->isTakingPicture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldAllowDismiss()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->isTakingPicture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldAllowHorizontalTugging()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->isTakingPicture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected takePicture()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 294
    iget-boolean v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->isTakingPicture:Z

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Already taking a picture."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-boolean v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPlayInitialSound:Z

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 306
    :cond_1
    sget v1, Lcom/google/glass/camera/R$id;->crop_marks:I

    invoke-virtual {p0, v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/CropMarksView;

    .line 307
    .local v0, cropMarksView:Lcom/google/glass/camera/CropMarksView;
    invoke-virtual {v0}, Lcom/google/glass/camera/CropMarksView;->play()V

    .line 310
    sget v1, Lcom/google/glass/camera/R$id;->thumbnail:I

    invoke-virtual {p0, v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 311
    sget v1, Lcom/google/glass/camera/R$id;->final_image:I

    invoke-virtual {p0, v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 312
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 315
    iput-boolean v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->isTakingPicture:Z

    .line 316
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getCamera()Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->takePicture(Lcom/google/glass/camera/SharedCameraClient;)V

    goto :goto_0
.end method
