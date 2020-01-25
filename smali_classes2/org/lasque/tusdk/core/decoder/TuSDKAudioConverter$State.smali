.class public final enum Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Ready:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

.field public static final enum Started:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

.field public static final enum Stoped:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

.field public static final enum UnKnow:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    const-string v1, "UnKnow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->UnKnow:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    const-string v1, "Ready"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->Ready:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    const-string v1, "Started"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->Started:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    const-string v1, "Stoped"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->Stoped:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    sget-object v1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->UnKnow:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->Ready:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->Started:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->Stoped:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->a:[Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->a:[Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    return-object v0
.end method
