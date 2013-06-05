.class Lcom/google/glass/camera/BaseRecordVideoActivity$6;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BaseRecordVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$6;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$6;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2600(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/callStateReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$6;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    #calls: Lcom/google/glass/camera/BaseRecordVideoActivity;->onCallStateChanged(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2500(Lcom/google/glass/camera/BaseRecordVideoActivity;Landroid/content/Intent;)V

    .line 305
    return-void
.end method
