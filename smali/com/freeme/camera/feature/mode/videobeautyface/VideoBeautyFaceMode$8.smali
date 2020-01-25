.class Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$8;
.super Ljava/lang/Object;
.source "VideoBeautyFaceMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$RestrictionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$8;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRestriction()Lcom/freeme/camera/common/relation/Relation;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$8;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->getPreviewedRestriction()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method
