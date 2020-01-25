.class public abstract Lcom/freeme/camera/common/mode/Device2Controller;
.super Ljava/lang/Object;
.source "Device2Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;,
        Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;
    }
.end annotation


# static fields
.field protected static final KEY_SHUTTER_SOUND:Ljava/lang/String; = "key_shutter_sound"

.field private static final MSG_DEVICE_ON_CAMERA_CLOSED:I = 0x1

.field private static final MSG_DEVICE_ON_CAMERA_DISCONNECTED:I = 0x2

.field private static final MSG_DEVICE_ON_CAMERA_ERROR:I = 0x3

.field private static final MSG_DEVICE_ON_CAMERA_OPENED:I = 0x0

.field protected static final VALUE_OFF:Ljava/lang/String; = "off"

.field protected static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field protected final mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;-><init>(Lcom/freeme/camera/common/mode/Device2Controller;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/Device2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    return-void
.end method


# virtual methods
.method protected doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/common/mode/Device2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;->removeMessages(I)V

    return-void
.end method

.method protected abstract doCameraDisconnected(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
.end method

.method protected abstract doCameraError(Lcom/freeme/camera/common/device/v2/Camera2Proxy;I)V
.end method

.method protected abstract doCameraOpened(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
.end method
