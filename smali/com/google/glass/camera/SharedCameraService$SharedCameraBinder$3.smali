.class Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$3;
.super Ljava/lang/Object;
.source "SharedCameraService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->stopPreview(Lcom/google/glass/camera/SharedCameraClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

.field final synthetic val$client:Lcom/google/glass/camera/SharedCameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$3;->this$1:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$3;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$3;->this$1:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    iget-object v0, v0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$3;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/SharedCameraManager;->stopPreview(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 181
    return-void
.end method
