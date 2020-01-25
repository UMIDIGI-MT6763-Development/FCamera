.class public final enum Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum InitializationFailed:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

    const-string v1, "InitializationFailed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;->InitializationFailed:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

    sget-object v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;->InitializationFailed:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

    aput-object v1, v0, v2

    sput-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;->a:[Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;->a:[Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

    return-object v0
.end method
