.class public Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TuSDKMovieSplicerOption"
.end annotation


# instance fields
.field public listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;

.field public savePath:Ljava/lang/String;

.field public splicerType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;->SplicerMovieType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    iput-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->splicerType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    return-void
.end method
