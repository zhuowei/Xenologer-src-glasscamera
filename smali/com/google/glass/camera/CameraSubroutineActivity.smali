.class public Lcom/google/glass/camera/CameraSubroutineActivity;
.super Lcom/google/glass/camera/BaseTakePictureActivity;
.source "CameraSubroutineActivity.java"


# static fields
.field public static final EXTRA_PICTURE_FILE_PATH:Ljava/lang/String; = "picture_file_path"


# instance fields
.field private picturePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/glass/camera/CameraSubroutineActivity;->finishAndTurnScreenOffIfRequested()V

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/CameraSubroutineActivity;->setResult(I)V

    .line 31
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method protected onPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 3
    .parameter "picture"

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/camera/CameraSubroutineActivity;->picturePath:Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v0, resultData:Landroid/content/Intent;
    const-string v1, "picture_file_path"

    iget-object v2, p0, Lcom/google/glass/camera/CameraSubroutineActivity;->picturePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/camera/CameraSubroutineActivity;->setResult(ILandroid/content/Intent;)V

    .line 46
    return-void
.end method

.method protected onPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 0
    .parameter "picture"

    .prologue
    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->onResume()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/camera/CameraSubroutineActivity;->picturePath:Ljava/lang/String;

    .line 21
    return-void
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method
