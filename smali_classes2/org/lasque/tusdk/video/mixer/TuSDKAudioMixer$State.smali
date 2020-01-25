.class public final enum Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

.field public static final enum Complete:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

.field public static final enum Decoded:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

.field public static final enum Decoding:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

.field public static final enum Idle:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

.field public static final enum Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

.field private static final synthetic a:[Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Idle:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    const-string v1, "Decoding"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Decoding:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    const-string v1, "Decoded"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Decoded:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    const-string v1, "Mixing"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    const-string v1, "Complete"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Complete:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    const-string v1, "Cancelled"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Idle:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Decoding:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Decoded:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Complete:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    aput-object v1, v0, v7

    sput-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->a:[Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->a:[Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    return-object v0
.end method
