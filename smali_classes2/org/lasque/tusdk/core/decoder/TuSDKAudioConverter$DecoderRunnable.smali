.class Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecoderRunnable"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;-><init>(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;

    invoke-static {v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->a(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;

    invoke-static {v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->b(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V

    :goto_0
    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->isStoped()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;

    invoke-static {v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;

    invoke-static {v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->d(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;

    new-instance v3, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable$1;

    invoke-direct {v3, p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable$1;-><init>(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;)V

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->a(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;

    invoke-static {v3}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
