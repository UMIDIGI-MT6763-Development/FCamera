.class public final Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TuSDKStickerAnimationItem"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

.field public imageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field public textureID:I


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;ILorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;->a:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;->textureID:I

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;->imageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-void
.end method
