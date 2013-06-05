.class Lcom/google/glass/camera/TakePictureActivity$1;
.super Ljava/lang/Object;
.source "TakePictureActivity.java"

# interfaces
.implements Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/TakePictureActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/TakePictureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    #calls: Lcom/google/glass/camera/TakePictureActivity;->finishAndTurnScreenOffIfRequested()V
    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$000(Lcom/google/glass/camera/TakePictureActivity;)V

    .line 84
    return-void
.end method
