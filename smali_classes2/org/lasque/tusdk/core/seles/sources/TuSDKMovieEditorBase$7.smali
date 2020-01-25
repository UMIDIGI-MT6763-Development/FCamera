.class Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$7;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$7;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->onFilterChanged()V

    return-void
.end method
