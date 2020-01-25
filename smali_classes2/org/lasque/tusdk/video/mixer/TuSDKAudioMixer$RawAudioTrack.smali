.class public Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RawAudioTrack"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

.field private b:Ljava/io/RandomAccessFile;

.field private c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->e:Z

    iput-object p2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    return-object p0
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->e:Z

    return v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->e:Z

    return p1
.end method

.method private b()Ljava/io/RandomAccessFile;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b:Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->validateTimeRange()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->bytesSizeOfTimeRangeStartPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->d:Z

    return p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->d:Z

    return p1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b:Ljava/io/RandomAccessFile;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b:Ljava/io/RandomAccessFile;

    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Z
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Ljava/io/RandomAccessFile;
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->b()Ljava/io/RandomAccessFile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;->c()V

    return-void
.end method
