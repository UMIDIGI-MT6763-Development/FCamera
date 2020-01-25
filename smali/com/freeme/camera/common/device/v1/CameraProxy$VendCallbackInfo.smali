.class final Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;
.super Ljava/lang/Object;
.source "CameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v1/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VendCallbackInfo"
.end annotation


# instance fields
.field final mArg1:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

.field final mMsgId:I

.field final synthetic this$0:Lcom/freeme/camera/common/device/v1/CameraProxy;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v1/CameraProxy;ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;->this$0:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;->mMsgId:I

    iput-object p3, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;->mArg1:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    return-void
.end method
