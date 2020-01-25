.class Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;->videoInfo:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isSaveToAlbum()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieOutputPath()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->saveMp4ToAlbum(Landroid/content/Context;Ljava/io/File;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;->videoSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;->videoSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    iget-object v2, v2, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;->videoSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;->videoSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->notifyRefreshAblum(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieOutputPath()Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;->videoPath:Ljava/io/File;

    :goto_0
    new-instance v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7$1;

    invoke-direct {v1, p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7$1;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method
