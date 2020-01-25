.class public final enum Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HIGH1:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

.field public static final enum HIGH2:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

.field public static final enum LOW1:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

.field public static final enum LOW2:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

.field public static final enum MEDIUM1:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

.field public static final enum MEDIUM2:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

.field private static final synthetic c:[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    const-string v1, "LOW1"

    const/4 v2, 0x0

    const v3, 0xac44

    const/16 v4, 0x4800

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->LOW1:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    const-string v1, "LOW2"

    const/4 v4, 0x1

    const/16 v5, 0x6000

    invoke-direct {v0, v1, v4, v3, v5}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->LOW2:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    const-string v1, "MEDIUM1"

    const/4 v5, 0x2

    const v6, 0x8000

    invoke-direct {v0, v1, v5, v3, v6}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->MEDIUM1:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    const-string v1, "MEDIUM2"

    const/4 v6, 0x3

    const v7, 0xc000

    invoke-direct {v0, v1, v6, v3, v7}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->MEDIUM2:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    const-string v1, "HIGH1"

    const/4 v7, 0x4

    const v8, 0x18000

    invoke-direct {v0, v1, v7, v3, v8}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->HIGH1:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    const-string v1, "HIGH2"

    const/4 v8, 0x5

    const/high16 v9, 0x20000

    invoke-direct {v0, v1, v8, v3, v9}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->HIGH2:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->LOW1:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->LOW2:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->MEDIUM1:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->MEDIUM2:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->HIGH1:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    aput-object v1, v0, v7

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->HIGH2:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    aput-object v1, v0, v8

    sput-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->c:[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->a:I

    iput p4, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->c:[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    return-object v0
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->b:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->a:I

    return v0
.end method
