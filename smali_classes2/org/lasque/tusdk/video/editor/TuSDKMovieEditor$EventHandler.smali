.class Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;F)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->l(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->k(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->j(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->i(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$EventHandler;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->h(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
