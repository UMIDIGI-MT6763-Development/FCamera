.class public interface abstract Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMP4MovieMixerDelegate"
.end annotation


# virtual methods
.method public abstract onErrrCode(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;)V
.end method

.method public abstract onMixerComplete(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V
.end method

.method public abstract onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V
.end method
