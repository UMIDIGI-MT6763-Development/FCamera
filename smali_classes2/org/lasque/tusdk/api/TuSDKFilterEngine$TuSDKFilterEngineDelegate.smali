.class public interface abstract Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/VideoFilterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/api/TuSDKFilterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSDKFilterEngineDelegate"
.end annotation


# virtual methods
.method public abstract onPictureDataCompleted(Ljava/nio/IntBuffer;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
.end method

.method public abstract onPreviewScreenShot(Landroid/graphics/Bitmap;)V
.end method
