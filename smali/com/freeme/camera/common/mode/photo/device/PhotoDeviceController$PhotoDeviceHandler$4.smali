.class Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler$4;
.super Ljava/lang/Object;
.source "PhotoDeviceController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler$4;->this$1:Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 0

    return-void
.end method
