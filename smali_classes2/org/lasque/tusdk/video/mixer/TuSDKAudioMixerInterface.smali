.class public interface abstract Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixerInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract mixAudios(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract mixRawAudioBytes([[B)[B
.end method
