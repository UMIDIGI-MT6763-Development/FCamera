.class public Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioRecordThread"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

.field private b:Z


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;->b:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;->b:Z

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;->b:Z

    return-void
.end method

.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    invoke-static {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->b(Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    invoke-static {v1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->a(Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    invoke-static {v3}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->a(Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;->b:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$AudioRecordThread;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    invoke-static {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->a(Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->onRawAudioFrameDataAvailable([B)V

    goto :goto_0

    :cond_1
    return-void
.end method
