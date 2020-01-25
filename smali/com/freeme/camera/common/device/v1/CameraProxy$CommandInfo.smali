.class final Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;
.super Ljava/lang/Object;
.source "CameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v1/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CommandInfo"
.end annotation


# instance fields
.field final mArg1:I

.field final mArg2:I

.field final mCommand:I

.field final synthetic this$0:Lcom/freeme/camera/common/device/v1/CameraProxy;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v1/CameraProxy;III)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;->this$0:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;->mCommand:I

    iput p3, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;->mArg1:I

    iput p4, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;->mArg2:I

    return-void
.end method
