.class public interface abstract Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAudioMixerDelegate"
.end annotation


# virtual methods
.method public abstract onMixed([B)V
.end method

.method public abstract onMixingError(I)V
.end method

.method public abstract onReayTrunkTrackInfo(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)V
.end method

.method public abstract onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V
.end method
