.class public interface abstract Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore$TuSdkAudioRecorderDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSdkAudioRecorderDelegate"
.end annotation


# virtual methods
.method public abstract onAudioStarted()V
.end method

.method public abstract onRawAudioFrameDataAvailable([B)V
.end method
