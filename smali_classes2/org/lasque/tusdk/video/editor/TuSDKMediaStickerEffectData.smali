.class public Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;
.super Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;


# instance fields
.field private a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;-><init>()V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "%s : Invalid sticker data"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->setVaild(Z)V

    return-void
.end method


# virtual methods
.method public getStickerGroup()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    return-object v0
.end method
