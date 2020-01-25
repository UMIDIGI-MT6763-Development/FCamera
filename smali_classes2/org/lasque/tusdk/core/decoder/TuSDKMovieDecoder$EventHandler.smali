.class Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;->a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;-><init>(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;->a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-static {p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->c(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;->a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-static {p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->b(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;->a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-static {p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->a(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
