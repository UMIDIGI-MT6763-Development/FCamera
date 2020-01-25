.class public Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;
.super Ljava/lang/Object;
.source "IDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/photo/device/IDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataCallbackInfo"
.end annotation


# instance fields
.field public data:[B

.field public imageHeight:I

.field public imageWidth:I

.field public mBufferFormat:I

.field public needRestartPreview:Z

.field public needUpdateThumbnail:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->mBufferFormat:I

    return-void
.end method
