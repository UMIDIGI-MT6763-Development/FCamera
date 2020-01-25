.class public final enum Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INITIALIZED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

.field public static final enum INITIALIZING:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

.field public static final enum PAUSED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

.field public static final enum PLAYING:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

.field public static final enum STOPED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

.field public static final enum UNINITIALIZED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

.field private static final synthetic a:[Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->UNINITIALIZED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    const-string v1, "INITIALIZING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->INITIALIZING:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    const-string v1, "INITIALIZED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->INITIALIZED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    const-string v1, "PLAYING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->PLAYING:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    const-string v1, "PAUSED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->PAUSED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    const-string v1, "STOPED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->STOPED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->UNINITIALIZED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->INITIALIZING:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->INITIALIZED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->PLAYING:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->PAUSED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->STOPED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    aput-object v1, v0, v7

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->a:[Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->a:[Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    return-object v0
.end method
