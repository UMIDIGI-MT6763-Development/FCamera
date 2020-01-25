.class public Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TuSDKMovieClipperOption"
.end annotation


# instance fields
.field public fps:I

.field public listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;

.field public savePath:Ljava/lang/String;

.field public srcUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
