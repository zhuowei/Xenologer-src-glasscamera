.class Lcom/google/glass/camera/BaseTakePictureActivity$1;
.super Ljava/lang/Object;
.source "BaseTakePictureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 59
    iput-object p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$1;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$1;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    #calls: Lcom/google/glass/camera/BaseTakePictureActivity;->finishAndTurnScreenOffIfRequested()V
    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)V

    .line 66
    return-void
.end method
