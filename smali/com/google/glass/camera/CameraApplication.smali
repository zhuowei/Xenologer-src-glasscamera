.class public Lcom/google/glass/camera/CameraApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "CameraApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 14
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/camera/SharedCameraService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/CameraApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 19
    return-void
.end method
