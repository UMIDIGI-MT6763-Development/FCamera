.class public Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;
.super Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;,
        Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;,
        Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;,
        Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

.field private b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:F

.field private i:Z

.field private j:Z

.field private k:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

.field private l:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

.field private m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

.field private n:Z

.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

.field private r:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

.field private s:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

.field private t:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

.field private u:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

.field private v:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

.field private w:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

.field private x:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    sget-object p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Unknow:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->e:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->g:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->h:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->i:Z

    iput-boolean p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->j:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->n:Z

    new-instance p2, Ljava/util/HashSet;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o:Ljava/util/Set;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p:Ljava/util/Set;

    new-instance p2, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    invoke-direct {p2}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;-><init>()V

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->q:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    new-instance p2, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-direct {p2}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;-><init>()V

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->r:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    sget-object p2, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->None:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->s:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    new-instance p2, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-direct {p2}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;-><init>()V

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->v:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    new-instance p2, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;

    invoke-direct {p2, p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->w:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    new-instance p2, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$8;

    invoke-direct {p2, p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$8;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->x:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;

    invoke-direct {p0, p3}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;)V

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    iget-object p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->videoDataSource:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    if-eqz p2, :cond_1

    iget-object p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->videoDataSource:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->setVideoDataSource(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    goto :goto_0

    :cond_1
    iget-object p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->moviePath:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->setMoviePath(Ljava/lang/String;)V

    :goto_0
    iget-object p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->cutTimeRange:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->setTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V

    iget-object p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->saveToAlbum:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->setSaveToAlbum(Z)V

    iget-object p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->saveToAlbumName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->setSaveToAlbumName(Ljava/lang/String;)V

    iget-boolean p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->clearAudioDecodeCacheInfoOnDestory:Z

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->setClearAudioDecodeCacheInfoOnDestory(Z)V

    iget-object p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->outputRegion:Landroid/graphics/RectF;

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->setOutputRegion(Landroid/graphics/RectF;)V

    iget-boolean p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->loopingPlay:Z

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->setLooping(Z)V

    iget-object p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->setOutputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    iget-object p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->movieOutputFilePath:Ljava/io/File;

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->setMovieOutputPath(Ljava/io/File;)V

    iget-boolean p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->autoPlay:Z

    iput-boolean p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->j:Z

    iget-boolean p2, p3, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->includeAudioInVideo:Z

    iput-boolean p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->g:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->initEditor()V

    new-instance p2, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getVideoDataSource()Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->t:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    iget-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->t:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    iget-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->t:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setTrunk(Z)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    iget-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->q:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    iget-boolean p3, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->g:Z

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->setLooping(Z)Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->k:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    return-object p0
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d(Z)V

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c(Z)V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d()V

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;

    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->setIsApplyed(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;

    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->setIsApplyed(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(F)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(J)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    invoke-interface {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;->seekStickerToFrameTime(J)V

    :cond_0
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getDelegate()Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getDelegate()Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;->onMovieEditComplete(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->RecordingFailed:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;)V

    :goto_0
    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d:Ljava/io/File;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d:Ljava/io/File;

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c:Ljava/io/File;

    sget-object p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Unknow:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->r()V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->s:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->s:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getDelegate()Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getDelegate()Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;->onMovieEditorSoundStatusChanged(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;)V

    :cond_1
    return-void
.end method

.method private a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getDelegate()Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getDelegate()Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;->onMovieEditorStatusChanged(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;)V

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Previewing:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    if-ne p1, v0, :cond_2

    const-wide/32 v0, 0x902001

    :goto_0
    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Recording:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    if-ne p1, v0, :cond_3

    const-wide/32 v0, 0x902000

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->PreviewingCompleted:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    if-ne p1, v0, :cond_4

    const-wide/32 v0, 0x902002

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(F)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b(J)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c(Z)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getVideoDuration()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getVideoDuration()F

    move-result v0

    iget v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    :cond_1
    :goto_0
    return-void
.end method

.method private a(FLorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getVideoDuration()F

    move-result v0

    invoke-virtual {p2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->validateTimeRange()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->getAtTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    invoke-virtual {p2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->getAtTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object p2

    iget p2, p2, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    move v2, v0

    move v0, p2

    move p2, v2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    cmpl-float p2, p1, p2

    if-ltz p2, :cond_1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private a(Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->isVaild()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->None:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->s:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->isVaild()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->n:Z

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->moviePath:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->videoDataSource:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    if-nez v1, :cond_1

    const-string p1, "Please set moviePath"

    :goto_0
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    iget-object v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->cutTimeRange:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->cutTimeRange:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    iget v1, v1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    iget-object v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->cutTimeRange:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    iget v1, v1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->cutTimeRange:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "cutTimeRange is invalid"

    goto :goto_0

    :cond_2
    iget v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->minCutDuration:I

    if-lez v1, :cond_3

    iget-object v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->cutTimeRange:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    iget v1, v1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    iget-object v2, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->cutTimeRange:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    iget v2, v2, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    sub-float/2addr v1, v2

    iget v2, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->minCutDuration:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const-string p1, "cutTimeRange duration < minCutDuration"

    goto :goto_0

    :cond_3
    iget v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->maxCutDuration:I

    if-lez v1, :cond_4

    iget-object v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->cutTimeRange:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    iget v1, v1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    iget-object v2, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->cutTimeRange:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    iget v2, v2, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    sub-float/2addr v1, v2

    iget p1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->maxCutDuration:I

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_4

    const-string p1, "cutTimeRange duration > maxCutDuration"

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private a(Z)Z
    .locals 3

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->s:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    sget-object v2, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->Loaded:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->q:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    new-instance v2, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;

    invoke-direct {v2, p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;Z)V

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->setDelegate(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$TuSDKMutiAudioPlayerDelegate;)Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->q:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b(Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->asyncPrepare(Ljava/util/List;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Landroid/graphics/SurfaceTexture;
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0
.end method

.method private b(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->t:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->getAtTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->getAudioEntry()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v4

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->getAtTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->convertTo(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->getAtTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    :cond_2
    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->getAudioEntry()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private b(F)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;

    invoke-direct {p0, p1, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(FLorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->isApplyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b(Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c(Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    invoke-direct {p0, p1, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(FLorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->isApplyed()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b(Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c(Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method private b(J)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    invoke-interface {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;->setBenchmarkTime(J)V

    :cond_0
    return-void
.end method

.method private b(Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;)V
    .locals 1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->isApplyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->setIsApplyed(Z)V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c()Z

    :cond_1
    return-void
.end method

.method private b(Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;)V
    .locals 2

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->isApplyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->n:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->removeAllLiveSticker()V

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->getStickerGroup()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->showGroupSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->n:Z

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->setIsApplyed(Z)V

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d(Z)V

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b(J)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b(F)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(J)V

    return-void
.end method

.method private b()Z
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private c(Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->setIsApplyed(Z)V

    return-void
.end method

.method private c(Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;)V
    .locals 1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->isApplyed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d(Z)V

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->setIsApplyed(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;->setEnableAutoplayMode(Z)V

    :cond_0
    return-void
.end method

.method private c()Z
    .locals 3

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isRecording()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->q:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->getState()Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    move-result-object v0

    sget-object v2, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Playing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->q:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->setLooping(Z)Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->q:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->start()V

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Z
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b()Z

    move-result p0

    return p0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->q:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->stop()V

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->None:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->s:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->q()V

    return-void
.end method

.method private d(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;->setStickerVisibility(Z)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->t:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    return-object p0
.end method

.method private e()V
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$2;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v3

    iput-object v3, v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v2, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->iFrameInterval:I

    if-lez v3, :cond_0

    iget v3, v2, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->iFrameInterval:I

    iput v3, v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->mediacodecAVCIFrameInterval:I

    :cond_0
    iget v3, v2, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->fps:I

    iget v2, v2, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->bitrate:I

    invoke-virtual {v0, v3, v2}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setDefaultVideoQuality(II)V

    :cond_1
    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setVideoEncoderSetting(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getOutputRegion()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setOutputRegion(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getWaterMarkImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setWaterMarkImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getWaterMarkPosition()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setWaterMarkPosition(Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;)V

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->w:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setDelegate(Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->k:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    return-void
.end method

.method static synthetic f(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p:Ljava/util/Set;

    return-object p0
.end method

.method private f()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->e()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->updateOutputFilter()V

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$3;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->k:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;->stopRecording()V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->k:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->k:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    :cond_0
    return-void
.end method

.method static synthetic g(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Z
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->i()V

    return-void
.end method

.method private h()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->s:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->Loading:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isVideoLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->q:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->getState()Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->PreParing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private i()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->h()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->startProcessing()V

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Previewing:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic i(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->j()V

    return-void
.end method

.method private j()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->stopProcessing()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a()V

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->PreviewingCompleted:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;)V

    return-void
.end method

.method static synthetic j(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->k()V

    return-void
.end method

.method private k()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->stopProcessing()V

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Recording:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->initMovieWriter()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->setLooping(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->setPlaygroundTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->startProcessing()V

    return-void
.end method

.method static synthetic k(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->l()V

    return-void
.end method

.method private l()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->stopProcessing()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->g()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->stopWriter()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->q()V

    :goto_0
    return-void
.end method

.method static synthetic l(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->n()V

    return-void
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->v:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->setIgnoreTrunkAudioTimeRange(Z)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->v:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->setClearAudioDecodeCacheInfoOnCompleted(Z)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->v:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieOutputPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->setOutputFilePath(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->v:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieOutputTempFilePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->create(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b(Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->mix(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;Ljava/util/List;Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->v:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    new-instance v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$5;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$5;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->setDelegate(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->v:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->cancle()V

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->None:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->s:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Unknow:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->stopProcessing()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->g()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->stopWriter()V

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->pauseProcessing()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a()V

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Paused:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;)V

    :goto_0
    return-void
.end method

.method private o()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v0

    iget-boolean v0, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->existAudioTrack:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p()V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$6;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$6;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method private q()V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-wide/32 v0, 0x902004

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->getAudioEntry()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getVolume()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const-wide/32 v0, 0x902005

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-wide/32 v0, 0x902007

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-wide/32 v0, 0x902006

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    if-eqz v0, :cond_4

    const-wide/32 v0, 0x902003

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    :cond_4
    return-void
.end method

.method private s()Z
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public final addMediaEffectData(Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->isVaild()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->removeAllMediaEffects()V

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;->getAtTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V

    instance-of v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    if-eqz v1, :cond_2

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoEditorMusicEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const-string p1, "You are not allowed to user editor music, please see http://tusdk.com"

    :goto_1
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    check-cast p1, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;)Z

    goto :goto_4

    :cond_2
    instance-of v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;

    if-eqz v1, :cond_4

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoEditorStickerEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    const-string p1, "You are not allowed to user editor sticker, please see http://tusdk.com"

    goto :goto_1

    :cond_3
    check-cast p1, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;

    :goto_3
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;)Z

    goto :goto_4

    :cond_4
    instance-of v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;

    if-eqz v1, :cond_7

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoEditorMusicEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoEditorStickerEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    check-cast p1, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->a()Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;)Z

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;->b()Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;

    move-result-object p1

    goto :goto_3

    :cond_7
    :goto_4
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_5
    return v0
.end method

.method protected applyFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->applyFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->k:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->k:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->removeAllTargets()V

    return-void
.end method

.method public getDelegate()Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->l:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

    return-object v0
.end method

.method public getMovieOutputPath()Ljava/io/File;
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c:Ljava/io/File;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isSaveToAlbum()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getSaveToAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getSaveToAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/AlbumHelper;->getAlbumVideoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/AlbumHelper;->getAlbumVideoFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "lsq_%s.mp4"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c:Ljava/io/File;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c:Ljava/io/File;

    return-object v0
.end method

.method protected getMovieOutputTempFilePath()Ljava/io/File;
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "lsq_%s.mp4"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d:Ljava/io/File;

    return-object v0
.end method

.method protected getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->u:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    return-object v0
.end method

.method public getSaveToAlbumName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v0

    return-object v0
.end method

.method protected initMovieWriter()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->u:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieOutputTempFilePath()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieOutputPath()Ljava/io/File;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->MPEG_4:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->create(Ljava/lang/String;Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->u:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->u:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->x:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->setDelegate(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;)V

    :cond_1
    return-void
.end method

.method public isEnableDecodeingMovieAudio()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGroupStickerUsed(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->isGroupStickerUsed(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPasued()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Paused:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isProcessPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewing()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Previewing:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecording()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Recording:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSaveToAlbum()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->e:Z

    return v0
.end method

.method protected onAudioDecoderInfoReady(Landroid/media/MediaFormat;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->canAddAudioTrack()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->addAudioTrack(Landroid/media/MediaFormat;)I

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasVideoTrack()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->start()Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAudioFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasAudioTrack()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->onDestroy()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p()V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->removeAllLiveSticker()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a()V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->destroy()V

    return-void
.end method

.method protected onFilterChanged()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->onFilterChanged()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getDelegate()Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getDelegate()Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;->onFilterChanged(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    :cond_0
    return-void
.end method

.method protected onMovieEditLoadVideoFailed()V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->LoadVideoFailed:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;)V

    return-void
.end method

.method protected onMovieEditLoaded()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->onMovieEditLoaded()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->startPreview()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Recording:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Previewing:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Loaded:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onMovieEditProcessingComplete()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->stopPreview()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->startPreview()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->stopRecording()V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->stopPreview()V

    :cond_2
    return-void
.end method

.method protected onMovieEditProgressChanged(JFF)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isRecording()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isPreviewing()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getDelegate()Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getDelegate()Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;->onMovieEditProgressChanged(FF)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isPreviewing()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p3}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(F)V

    :cond_2
    return-void
.end method

.method protected onMovieInfoAvailable(Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Recording:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->f()V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->destroy()V

    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->init(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method

.method public pauseProcessing()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public removeAllLiveSticker()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->removeAllStickers()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->updateFilterStickerData()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->n:Z

    return-void
.end method

.method public removeAllMediaEffects()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->stopPreview()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->removeAllLiveSticker()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a()V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->n:Z

    return-void
.end method

.method public removeMediaEffectData(Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resumeProcessing()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isPasued()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c(Z)V

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->resumeProcessing()V

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Previewing:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;)V

    :cond_2
    return-void
.end method

.method public setClearAudioDecodeCacheInfoOnDestory(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->i:Z

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->l:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;

    return-void
.end method

.method public setMVEffectData(Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerAudioEffectData;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->addMediaEffectData(Lorg/lasque/tusdk/video/editor/TuSDKMediaEffectData;)Z

    return-void
.end method

.method public setMovieOutputPath(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c:Ljava/io/File;

    return-void
.end method

.method public setPlaygroundTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->convertTo(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->setPlaygroundTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->t:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->t:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    :goto_0
    return-void
.end method

.method public setSaveToAlbum(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Could not set \'saveToAlbum\' while recording."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->e:Z

    return-void
.end method

.method public setSaveToAlbumName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->f:Ljava/lang/String;

    return-void
.end method

.method public setVideoSoundVolume(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->h:F

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->t:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->h:F

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setVolume(F)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    :cond_0
    return-void
.end method

.method public showGroupSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-wide v1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->categoryId:J

    sget-object v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->StickerCategorySmart:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    invoke-virtual {v3}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    const-string p1, "Too many live stickers in the group, please try to remove some stickers first."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->requireFaceFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "Only stickerGroup (requireFaceFeature() == false) could be used now"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-nez v0, :cond_3

    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->init(Ljavax/microedition/khronos/egl/EGLContext;)V

    new-instance v0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->showGroupSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->updateFilterStickerData()V

    return-void

    :cond_4
    :goto_0
    const-string p1, "Only live sticker could be used here"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startPreview()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startRecording()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopPreview()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected stopProcessing()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d()V

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->stopProcessing()V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected stopWriter()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->u:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->stop()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->u:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    :cond_0
    return-void
.end method

.method protected updateFilterStickerData()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->getStickers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;->updateStickers(Ljava/util/List;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKMediaStickerEffectData;->isApplyed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v1

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getOutputRegion()Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;->setDisplayRect(Landroid/graphics/RectF;F)V

    :cond_3
    return-void
.end method
