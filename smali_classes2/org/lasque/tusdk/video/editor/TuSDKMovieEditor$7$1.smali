.class Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/video/TuSDKVideoResult;

.field final synthetic b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7$1;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7$1;->a:Lorg/lasque/tusdk/core/video/TuSDKVideoResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7$1;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;

    iget-object v0, v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$7$1;->a:Lorg/lasque/tusdk/core/video/TuSDKVideoResult;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V

    return-void
.end method
