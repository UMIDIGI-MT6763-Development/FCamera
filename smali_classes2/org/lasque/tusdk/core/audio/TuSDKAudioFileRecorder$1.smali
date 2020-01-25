.class Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->notifyRecordingError(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

.field final synthetic b:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$1;->b:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;

    iput-object p2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$1;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$1;->b:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;)Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$1;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;->onAudioRecordError(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;)V

    return-void
.end method
