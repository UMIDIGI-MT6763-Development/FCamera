.class public Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TuSDKMoviePlayerOption"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public movieUri:Landroid/net/Uri;

.field public surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
