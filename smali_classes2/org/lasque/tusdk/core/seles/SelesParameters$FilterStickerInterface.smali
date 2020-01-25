.class public interface abstract Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/SelesParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FilterStickerInterface"
.end annotation


# virtual methods
.method public abstract seekStickerToFrameTime(J)V
.end method

.method public abstract setBenchmarkTime(J)V
.end method

.method public abstract setDisplayRect(Landroid/graphics/RectF;F)V
.end method

.method public abstract setEnableAutoplayMode(Z)V
.end method

.method public abstract setStickerVisibility(Z)V
.end method

.method public abstract updateStickers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;",
            ">;)V"
        }
    .end annotation
.end method
