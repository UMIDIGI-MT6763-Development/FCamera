.class Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->switchFilter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$6;->b:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$6;->b:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Ljava/lang/String;)V

    return-void
.end method
