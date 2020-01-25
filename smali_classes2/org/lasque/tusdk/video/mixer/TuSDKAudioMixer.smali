.class public abstract Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;,
        Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;,
        Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;,
        Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_UNKNOW:I = -0x1


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

.field private c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;

.field private volatile d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

.field private e:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

.field private f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Idle:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-direct {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->e:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$1;)V

    iget-object v3, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->isTrunk()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    const/4 v1, 0x1

    invoke-static {v2, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;Z)Z

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    return-object p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Decoding:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->e:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->cancel()V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->cancel()V

    :cond_2
    return-void
.end method

.method private a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;->onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Complete:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-ne p1, v0, :cond_2

    const-wide/32 v0, 0x903001

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V

    return-void
.end method

.method private a([BF)[B
    .locals 5

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p1, v2

    int-to-short v3, v3

    aget-byte v4, p1, v1

    int-to-short v4, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    or-int/2addr v3, v4

    int-to-short v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    int-to-short v3, v3

    int-to-byte v4, v3

    aput-byte v4, v0, v1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    return-object p1
.end method

.method private b()V
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$1;)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;->onReayTrunkTrackInfo(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)V

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [[B

    const/16 v2, 0x200

    new-array v3, v2, [B

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d()I

    move-result v4

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->c()I

    move-result v5

    :goto_0
    const/4 v6, -0x1

    :try_start_0
    iget-object v7, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    sget-object v8, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-ne v7, v8, :cond_11

    const/4 v7, 0x0

    move v8, v5

    move-object v5, v3

    move v3, v7

    :goto_1
    const/4 v9, 0x1

    if-ge v3, v0, :cond_c

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    invoke-static {v10}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    :goto_2
    move v11, v6

    goto/16 :goto_3

    :cond_2
    invoke-static {v10}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v10}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->d(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Ljava/io/RandomAccessFile;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v11

    if-eq v11, v6, :cond_3

    if-lt v8, v4, :cond_8

    :cond_3
    invoke-static {v10, v9}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;Z)Z

    goto/16 :goto_5

    :cond_4
    iget-object v11, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    if-eqz v11, :cond_5

    invoke-static {v10}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v11

    invoke-virtual {v11}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->validateTimeRange()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {v10}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v11

    invoke-virtual {v11}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->bytesSizeOfTimeRangeStartPosition()I

    move-result v11

    if-lt v8, v11, :cond_1

    invoke-static {v10}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v11

    invoke-virtual {v11}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->bytesSizeOfTimeRangeEndPosition()I

    move-result v11

    if-lt v8, v11, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v10}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->d(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Ljava/io/RandomAccessFile;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v11

    if-ne v11, v6, :cond_8

    iget-object v12, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    if-eqz v12, :cond_7

    invoke-static {v10}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v12

    invoke-virtual {v12}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->validateTimeRange()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-static {v10}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v12

    invoke-virtual {v12}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->isLooping()Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    invoke-static {v10}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->d(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Ljava/io/RandomAccessFile;

    move-result-object v9

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v10}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->d(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Ljava/io/RandomAccessFile;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v9

    move v11, v9

    goto :goto_3

    :cond_7
    invoke-static {v10, v9}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;Z)Z

    :cond_8
    :goto_3
    if-eq v11, v6, :cond_9

    invoke-virtual {p0, v10, v5}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->processPCMData(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;[B)[B

    move-result-object v5

    :cond_9
    if-ne v11, v6, :cond_a

    new-array v9, v2, [B

    goto :goto_4

    :cond_a
    array-length v9, v5

    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    :goto_4
    aput-object v9, v1, v3

    invoke-static {v10}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Z

    move-result v9

    if-eqz v9, :cond_b

    aget-object v9, v1, v3

    array-length v9, v9

    add-int/2addr v8, v9

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_c
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v10, v9

    :cond_d
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    invoke-static {v11}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {v11}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Z

    move-result v12

    if-eqz v12, :cond_e

    goto :goto_7

    :cond_e
    invoke-static {v11}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Z

    move-result v11

    if-nez v11, :cond_d

    move v10, v7

    goto :goto_6

    :cond_f
    move v9, v10

    :goto_7
    if-eqz v9, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->mixRawAudioBytes([[B)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->onMixed([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    move v5, v8

    goto/16 :goto_0

    :cond_11
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    if-eqz v0, :cond_12

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->e(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p0, v6}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->onMixingError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    if-eqz v0, :cond_13

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->e(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)V

    goto :goto_a

    :cond_14
    return-void

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    if-eqz v1, :cond_15

    invoke-static {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->e(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)V

    goto :goto_c

    :cond_16
    throw v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b(Ljava/util/List;)V

    return-void
.end method

.method private c()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->validateTimeRange()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->bytesSizeOfTimeRangeStartPosition()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->validateTimeRange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    invoke-static {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v1

    iget v1, v1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->bytesCountOfTime(I)I

    move-result v0

    return v0

    :cond_0
    const v0, 0x7fffffff

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Decoding:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a()V

    return-void
.end method

.method public clearDecodeCahceInfo()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->clearDecodeCahceInfo()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public mixAudios(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Decoding:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a:Ljava/util/List;

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Decoding:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->e:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->setAudioEntry(Ljava/util/List;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->e:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$1;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;)V

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->setDelegate(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->e:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onMixComplete()V
    .locals 0

    return-void
.end method

.method protected onMixed([B)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;->onMixed([B)V

    :cond_0
    return-void
.end method

.method protected onMixingError(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;->onMixingError(I)V

    :cond_0
    return-void
.end method

.method protected processPCMData(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;[B)[B
    .locals 2

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getVolume()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getVolume()F

    move-result p1

    invoke-direct {p0, p2, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a([BF)[B

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public setOnAudioMixDelegate(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;

    return-object p0
.end method
