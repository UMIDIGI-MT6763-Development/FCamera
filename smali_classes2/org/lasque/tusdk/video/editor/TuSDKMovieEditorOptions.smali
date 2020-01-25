.class public Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
.super Ljava/lang/Object;


# instance fields
.field public autoPlay:Z

.field public clearAudioDecodeCacheInfoOnDestory:Z

.field public cutTimeRange:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

.field public enableBeauty:Z

.field public includeAudioInVideo:Z

.field public loopingPlay:Z

.field public maxCutDuration:I

.field public minCutDuration:I

.field public movieOutputFilePath:Ljava/io/File;

.field public moviePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public outputRegion:Landroid/graphics/RectF;

.field public outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field public saveToAlbum:Ljava/lang/Boolean;

.field public saveToAlbumName:Ljava/lang/String;

.field public videoDataSource:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->clearAudioDecodeCacheInfoOnDestory:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->autoPlay:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->loopingPlay:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->enableBeauty:Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->saveToAlbum:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->includeAudioInVideo:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->autoPlay:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->loopingPlay:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->minCutDuration:I

    iput v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->maxCutDuration:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->outputRegion:Landroid/graphics/RectF;

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->movieOutputFilePath:Ljava/io/File;

    return-void
.end method

.method public static defaultOptions()Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;

    invoke-direct {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setAutoPlay(Z)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->autoPlay:Z

    return-object p0
.end method

.method public setClearAudioDecodeCacheInfoOnDestory(Z)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->clearAudioDecodeCacheInfoOnDestory:Z

    return-object p0
.end method

.method public setCutTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->cutTimeRange:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object p0
.end method

.method public setEnableBeauty(Z)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->enableBeauty:Z

    return-object p0
.end method

.method public setIncludeAudioInVideo(Z)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->includeAudioInVideo:Z

    return-object p0
.end method

.method public setLoopingPlay(Z)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->loopingPlay:Z

    return-object p0
.end method

.method public setMaxCutDuration(I)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->maxCutDuration:I

    return-object p0
.end method

.method public setMinCutDuration(I)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->minCutDuration:I

    return-object p0
.end method

.method public setMovieOutputFilePath(Ljava/io/File;)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->movieOutputFilePath:Ljava/io/File;

    return-object p0
.end method

.method public setMoviePath(Ljava/lang/String;)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->moviePath:Ljava/lang/String;

    return-object p0
.end method

.method public setOutputRegion(Landroid/graphics/RectF;)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->outputRegion:Landroid/graphics/RectF;

    return-object p0
.end method

.method public setOutputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object p0
.end method

.method public setSaveToAlbum(Ljava/lang/Boolean;)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->saveToAlbum:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSaveToAlbumName(Ljava/lang/String;)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->saveToAlbumName:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoDataSource(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditorOptions;->videoDataSource:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    return-object p0
.end method
