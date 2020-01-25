.class public Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;
.super Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;


# instance fields
.field private a:Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

.field private b:Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->create(Landroid/net/Uri;)Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->create(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;)V
    .locals 3

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->isVaild()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->isVaild()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->a:Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->b:Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->setVaild(Z)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "%s : Invalid MV data"

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "%s : Invalid MV data"

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;-><init>()V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    invoke-direct {v1, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    iput-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->a:Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    new-instance p1, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;

    invoke-direct {p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;-><init>(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->b:Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->setVaild(Z)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->setVaild(Z)V

    const-string p2, "%s : Invalid MV data"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, p1

    invoke-static {p2, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a()Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->a:Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    return-object v0
.end method

.method b()Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->b:Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;

    return-object v0
.end method

.method public setAtTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->setAtTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->a:Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->setAtTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->b:Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->setAtTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V

    return-void
.end method

.method public final setVolume(F)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->a:Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->setVolume(F)V

    return-void
.end method
