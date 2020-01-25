.class public Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;,
        Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;

.field private c:Landroid/media/AudioRecord;

.field private d:Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;

.field private e:[B

.field private f:Z

.field private g:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;

.field private h:Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

.field private i:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

.field protected mAudioEncoder:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->defaultCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->defaultEncoderSetting()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;-><init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->d:Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->f:Z

    if-nez p1, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->defaultCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->a(Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;)V

    if-nez p2, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->defaultEncoderSetting()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    move-result-object p2

    :cond_1
    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->prepare()Z

    return-void
.end method

.method private a()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderSource:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private a(Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->h:Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->i:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;)[B
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->e:[B

    return-object p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    return-object p0
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderSource:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    move-result-object v0

    iget-boolean v0, v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->shouldEnableAec:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    move-result-object v0

    iget-boolean v0, v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->shouldEnableNs:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->d:Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;

    if-nez v0, :cond_4

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->a()Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->d:Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;

    :cond_4
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->d:Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    move-result-object v1

    iget-boolean v1, v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->shouldEnableAec:Z

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->setAEC(Z)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->d:Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    move-result-object v1

    iget-boolean v1, v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->shouldEnableNs:Z

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->setNS(Z)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->d:Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->enable(I)V

    return-void
.end method

.method private b(Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;)Z
    .locals 9

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    if-nez v1, :cond_0

    iget v1, p1, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderSampleRate:I

    iget v2, p1, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderChannelConfig:I

    iget v3, p1, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderFormat:I

    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    new-instance v8, Landroid/media/AudioRecord;

    iget v3, p1, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderSource:I

    iget v4, p1, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderSampleRate:I

    iget v5, p1, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderChannelConfig:I

    iget v6, p1, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderFormat:I

    mul-int/lit8 v7, v1, 0x5

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v8, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    iget p1, p1, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderBufferSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->e:[B

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->isPrepared()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getAudioEncoder()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->mAudioEncoder:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->mAudioEncoder:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->mAudioEncoder:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    return-object v0
.end method

.method public getCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->h:Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->h:Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->h:Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    return-object v0
.end method

.method public getDelegate()Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->g:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;

    return-object v0
.end method

.method public getEncoderSetting()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->i:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->i:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->i:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    return-object v0
.end method

.method public isEnableAudioEncoder()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->f:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_1

    const-string v0, "TuSDKAudioRecorderCore | Please check the recording permission"

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    iget-object v3, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->h:Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    iget v3, v3, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderSliceSize:I

    invoke-virtual {v0, v3}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecord.SUCCESS != audioRecord.setPositionNotificationPeriod("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->h:Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    iget v2, v2, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderSliceSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isRecording()Z
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mute(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->startRecording()V

    :goto_0
    return-void
.end method

.method protected onRawAudioFrameDataAvailable([B)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->isEnableAudioEncoder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->mAudioEncoder:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;->queueAudio([B)V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getDelegate()Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getDelegate()Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;->onRawAudioFrameDataAvailable([B)V

    :cond_1
    return-void
.end method

.method protected prepare()Z
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->isEnableAudioEncoder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getAudioEncoder()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->mAudioEncoder:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getEncoderSetting()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;->initEncoder(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->b(Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;)Z

    move-result v0

    return v0
.end method

.method public setAudioEncoder(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->mAudioEncoder:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->g:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;

    return-void
.end method

.method public setEnableAudioEncoder(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->f:Z

    return-void
.end method

.method public startRecording()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->isRecording()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->isRecording()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    const-string v2, "TuSDKAudioRecorderCore | Please check the recording permission"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    invoke-direct {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->b()V

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->isEnableAudioEncoder()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->mAudioEncoder:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->mAudioEncoder:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    invoke-interface {v2}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;->start()V

    :cond_3
    iget-object v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->g:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->g:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;

    invoke-interface {v2}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;->onAudioStarted()V

    :cond_4
    new-instance v2, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;

    invoke-direct {v2, p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;-><init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;)V

    iput-object v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->b:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;

    iget-object v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->b:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;->start()V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%s | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public stopRecording()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->c:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->mAudioEncoder:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->mAudioEncoder:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;->stop()V

    :cond_2
    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->b:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->b:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;->quit()V

    :cond_3
    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->d:Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->d:Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->d:Lorg/lasque/tusdk/core/audio/TuSDKAudioEffects;

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
