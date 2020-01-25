.class public interface abstract Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$TuSDKOnlineStickerFetcherDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSDKOnlineStickerFetcherDelegate"
.end annotation


# virtual methods
.method public abstract onFetchCompleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFetchFailed()V
.end method
