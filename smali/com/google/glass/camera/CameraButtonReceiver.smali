.class public final Lcom/google/glass/camera/CameraButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/camera/CameraButtonReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/CameraButtonReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private captureCliplet(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isScreenOff"

    .prologue
    .line 73
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p2}, Lcom/google/glass/camera/CameraHelper;->recordCliplet(ZZ)V

    .line 74
    return-void
.end method

.method private capturePicture(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isScreenOff"

    .prologue
    .line 57
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p2, v1}, Lcom/google/glass/camera/CameraHelper;->takePicture(ZZZ)V

    .line 58
    return-void
.end method

.method private captureVideo(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isScreenOff"

    .prologue
    .line 63
    invoke-static {p1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/google/glass/camera/CameraButtonReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Cannot record a video while on a phone call."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/google/glass/camera/CameraHelper;->recordVideo(ZZ)V

    goto :goto_0
.end method

.method private getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/logging/UserEventHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 27
    const-string v4, "com.google.glass.action.CAMERA_BUTTON_DOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 28
    invoke-static {p1}, Lcom/google/glass/camera/SharedCameraService;->prepareCamera(Landroid/content/Context;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string v4, "android.intent.action.CAMERA_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    const-string v4, "screen_off"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 31
    .local v2, isScreenOff:Z
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 32
    .local v0, event:Landroid/view/KeyEvent;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 34
    .local v1, isLongPress:Z
    :cond_2
    if-eqz v1, :cond_4

    .line 35
    invoke-direct {p0, p1, v2}, Lcom/google/glass/camera/CameraButtonReceiver;->captureVideo(Landroid/content/Context;Z)V

    .line 45
    :goto_1
    if-eqz v2, :cond_3

    .line 46
    if-eqz v1, :cond_6

    const-string v3, "4"

    .line 48
    .local v3, userEventData:Ljava/lang/String;
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/glass/camera/CameraButtonReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/logging/UserEventHelper;

    move-result-object v4

    sget-object v5, Lcom/google/glass/logging/UserEventAction;->HOME_ACTIVATED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v4, v5, v3}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/google/glass/camera/CameraButtonReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/logging/UserEventHelper;

    move-result-object v4

    sget-object v5, Lcom/google/glass/logging/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v4, v5, v3}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 52
    .end local v3           #userEventData:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/camera/CameraButtonReceiver;->abortBroadcast()V

    goto :goto_0

    .line 37
    :cond_4
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->CLIPLET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 38
    invoke-direct {p0, p1, v2}, Lcom/google/glass/camera/CameraButtonReceiver;->captureCliplet(Landroid/content/Context;Z)V

    goto :goto_1

    .line 40
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/google/glass/camera/CameraButtonReceiver;->capturePicture(Landroid/content/Context;Z)V

    goto :goto_1

    .line 46
    :cond_6
    const-string v3, "3"

    goto :goto_2
.end method
