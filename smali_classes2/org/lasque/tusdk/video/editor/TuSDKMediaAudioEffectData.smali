.class public Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;
.super Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;


# instance fields
.field private a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;-><init>()V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-direct {v1, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;-><init>(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)V

    iput-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->setVaild(Z)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "%s : Invalid audio data"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->setVaild(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;-><init>()V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-direct {v1, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    iput-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->setVaild(Z)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "%s : Invalid audio data"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->setVaild(Z)V

    return-void
.end method


# virtual methods
.method public final getAudioEntry()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    return-object v0
.end method

.method public setAtTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->setAtTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    return-void
.end method

.method public final setVolume(F)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setVolume(F)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    return-void
.end method
