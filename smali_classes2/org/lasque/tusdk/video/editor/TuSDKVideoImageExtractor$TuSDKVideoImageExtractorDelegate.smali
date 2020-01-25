.class public interface abstract Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSDKVideoImageExtractorDelegate"
.end annotation


# virtual methods
.method public abstract onVideoImageListDidLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVideoNewImageLoaded(Landroid/graphics/Bitmap;)V
.end method
