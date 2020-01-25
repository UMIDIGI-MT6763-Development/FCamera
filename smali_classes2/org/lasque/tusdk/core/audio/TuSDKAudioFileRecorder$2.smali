.class Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->notifyRecordingState(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

.field final synthetic b:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$2;->b:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;

    iput-object p2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$2;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$2;->b:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;)Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$2;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;->onAudioRecordStateChanged(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;)V

    return-void
.end method
