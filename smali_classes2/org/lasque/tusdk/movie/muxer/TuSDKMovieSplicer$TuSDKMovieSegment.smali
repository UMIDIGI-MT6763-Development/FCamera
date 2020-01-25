.class public Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TuSDKMovieSegment"
.end annotation


# instance fields
.field public endTime:J

.field public sourceUri:Landroid/net/Uri;

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;->startTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;->endTime:J

    return-void
.end method
