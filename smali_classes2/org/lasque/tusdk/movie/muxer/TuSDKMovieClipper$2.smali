.class Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->startEdit(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    iput-object p2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->getSegmentList(JLjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newList.size() == 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-static {v1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-static {v1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;

    invoke-interface {v1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;->onStart()V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    :try_start_0
    iget-object v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    iget-object v3, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-static {v3}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->srcUri:Landroid/net/Uri;

    iget-object v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-static {v4}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    move-result-object v4

    iget-object v4, v4, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->savePath:Ljava/lang/String;

    iget-wide v5, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->startTime:J

    iget-wide v7, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->endTime:J

    invoke-static/range {v2 .. v8}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;Landroid/net/Uri;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->d(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->e(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;

    invoke-interface {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;->onCancel()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;

    iget-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;->b:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-static {v1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->savePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;->onDone(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
