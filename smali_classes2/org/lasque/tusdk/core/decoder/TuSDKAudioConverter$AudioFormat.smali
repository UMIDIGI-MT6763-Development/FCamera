.class public final enum Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AAC:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

.field private static final synthetic b:[Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    const-string v1, "AAC"

    const-string v2, "audio/mp4a-latm"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;->AAC:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    sget-object v1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;->AAC:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;->b:[Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;->b:[Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    return-object v0
.end method


# virtual methods
.method public getMeimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;->a:Ljava/lang/String;

    return-object v0
.end method
