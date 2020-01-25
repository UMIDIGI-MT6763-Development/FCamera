.class public final enum Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Complete:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

.field public static final enum Idle:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

.field public static final enum Playing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

.field public static final enum PrePared:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

.field public static final enum PreParing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

.field private static final synthetic a:[Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Idle:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    const-string v1, "PreParing"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->PreParing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    const-string v1, "PrePared"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->PrePared:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    const-string v1, "Playing"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Playing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    const-string v1, "Complete"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Complete:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Idle:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->PreParing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->PrePared:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Playing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Complete:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    aput-object v1, v0, v6

    sput-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->a:[Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->a:[Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    return-object v0
.end method
