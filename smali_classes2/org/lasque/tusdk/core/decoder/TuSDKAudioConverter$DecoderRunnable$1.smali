.class Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable$1;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable$1;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;

    iget-object v0, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->e(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V

    return-void
.end method
