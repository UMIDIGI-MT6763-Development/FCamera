.class public final enum Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Started:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

.field public static final enum Stopped:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

.field public static final enum UnKnow:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

.field private static final synthetic a:[Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    const-string v1, "UnKnow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->UnKnow:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    const-string v1, "Started"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->Started:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    const-string v1, "Stopped"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->Stopped:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->UnKnow:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->Started:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->Stopped:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    aput-object v1, v0, v4

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->a:[Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->a:[Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    return-object v0
.end method
