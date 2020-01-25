.class Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->getSegmentList(JLjava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$1;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    check-cast p2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$1;->compare(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;)I
    .locals 2

    iget-wide v0, p1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->startTime:J

    iget-wide p1, p2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->startTime:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method
