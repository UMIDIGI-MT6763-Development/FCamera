.class public final enum Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum UnsupportedVideoFormat:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;

.field private static final synthetic a:[Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;

    const-string v1, "UnsupportedVideoFormat"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;->UnsupportedVideoFormat:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;->UnsupportedVideoFormat:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;

    aput-object v1, v0, v2

    sput-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;->a:[Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;->a:[Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;

    return-object v0
.end method
