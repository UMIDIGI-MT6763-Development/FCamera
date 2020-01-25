.class public Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;,
        Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;,
        Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->isTrunk()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Z

    move-result p0

    return p0
.end method

.method private a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object p1

    iget p1, p1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    invoke-virtual {p2}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object p2

    iget p2, p2, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    if-eq p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Ljava/lang/String;
    .locals 6

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v0

    :cond_1
    return-object p1

    :cond_2
    return-object v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;

    return-object p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a:Ljava/util/Set;

    return-object p0
.end method

.method private c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAudioFormat(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)Landroid/media/MediaFormat;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->createWithMediaFormat(Landroid/media/MediaFormat;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->cancel()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setAudioEntry(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b:Ljava/util/List;

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    new-instance v2, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;

    invoke-direct {v2, p0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
