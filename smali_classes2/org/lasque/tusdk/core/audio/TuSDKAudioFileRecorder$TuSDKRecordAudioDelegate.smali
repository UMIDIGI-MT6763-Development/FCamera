.class public interface abstract Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSDKRecordAudioDelegate"
.end annotation


# virtual methods
.method public abstract onAudioRecordComplete(Ljava/io/File;)V
.end method

.method public abstract onAudioRecordError(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;)V
.end method

.method public abstract onAudioRecordStateChanged(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;)V
.end method
