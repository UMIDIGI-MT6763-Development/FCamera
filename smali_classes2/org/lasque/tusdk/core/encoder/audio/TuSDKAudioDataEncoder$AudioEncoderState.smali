.class final enum Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AudioEncoderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Runing:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

.field public static final enum Stopped:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

.field public static final enum UnKnow:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    const-string v1, "UnKnow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->UnKnow:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    const-string v1, "Runing"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->Runing:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    const-string v1, "Stopped"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->Stopped:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->UnKnow:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->Runing:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->Stopped:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    aput-object v1, v0, v4

    sput-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->a:[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->a:[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    return-object v0
.end method
