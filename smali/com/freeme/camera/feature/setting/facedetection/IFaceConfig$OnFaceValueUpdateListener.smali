.class public interface abstract Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;
.super Ljava/lang/Object;
.source "IFaceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFaceValueUpdateListener"
.end annotation


# virtual methods
.method public abstract onFacePreviewSizeUpdate()Lcom/freeme/camera/common/utils/Size;
.end method

.method public abstract onFaceSettingValueUpdate(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateImageOrientation()I
.end method
