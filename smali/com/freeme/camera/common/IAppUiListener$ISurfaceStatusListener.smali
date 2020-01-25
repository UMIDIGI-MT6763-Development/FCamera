.class public interface abstract Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;
.super Ljava/lang/Object;
.source "IAppUiListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/IAppUiListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISurfaceStatusListener"
.end annotation


# virtual methods
.method public abstract onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract surfaceAvailable(Ljava/lang/Object;II)V
.end method

.method public abstract surfaceChanged(Ljava/lang/Object;II)V
.end method

.method public abstract surfaceDestroyed(Ljava/lang/Object;II)V
.end method
