.class Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->start(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    iput-object p2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->a:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->savePath:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Save path is not valid"

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    iget-object v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Media format not the same"

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    iget-object v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;

    iget-object v2, v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;->sourceUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;

    invoke-interface {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;->onStart()V

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;

    if-nez v2, :cond_4

    const-string v2, "Segment is empty"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :try_start_1
    iget-object v3, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    invoke-static {v3, v2}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    iget-object v3, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    invoke-static {v3}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    invoke-static {v3}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;

    invoke-interface {v3, v2}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;->onError(Ljava/lang/Exception;)V

    :cond_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->b(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;

    invoke-interface {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;->onDone()V

    :cond_7
    return-void

    :cond_8
    :goto_3
    const-string v0, "Start Splicer is not valid"

    goto/16 :goto_0
.end method
