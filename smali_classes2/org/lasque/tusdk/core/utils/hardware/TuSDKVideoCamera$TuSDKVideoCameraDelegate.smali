.class public interface abstract Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/VideoFilterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSDKVideoCameraDelegate"
.end annotation


# virtual methods
.method public abstract onVideoCameraScreenShot(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraInterface;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onVideoCameraStateChanged(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraInterface;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V
.end method
