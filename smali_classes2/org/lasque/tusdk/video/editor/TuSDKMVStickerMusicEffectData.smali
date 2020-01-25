.class public Lorg/lasque/tusdk/video/editor/TuSDKMVStickerMusicEffectData;
.super Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

.field private b:Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->create(Landroid/net/Uri;)Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMVStickerMusicEffectData;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->create(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMVStickerMusicEffectData;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    return-void
.end method


# virtual methods
.method public getLocalAudioPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMVStickerMusicEffectData;->a:Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->getAudioEntry()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMVStickerMusicEffectData;->a:Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->getAudioEntry()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalAudioUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMVStickerMusicEffectData;->a:Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->getAudioEntry()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMVStickerMusicEffectData;->a:Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->getAudioEntry()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStickerGroup()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMVStickerMusicEffectData;->b:Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->getStickerGroup()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    move-result-object v0

    return-object v0
.end method
