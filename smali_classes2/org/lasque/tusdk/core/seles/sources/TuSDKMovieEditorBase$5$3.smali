.class Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->onProgressChanged(JFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;JFF)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$3;->d:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;

    iput-wide p2, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$3;->a:J

    iput p4, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$3;->b:F

    iput p5, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$3;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$3;->d:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    iget-wide v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$3;->a:J

    iget v3, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$3;->b:F

    iget v4, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$3;->c:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->onMovieEditProgressChanged(JFF)V

    return-void
.end method
