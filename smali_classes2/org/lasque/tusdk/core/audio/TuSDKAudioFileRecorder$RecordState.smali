.class public final enum Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Recording:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

.field public static final enum Stoped:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    const-string v1, "Recording"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;->Recording:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    new-instance v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    const-string v1, "Stoped"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;->Stoped:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    sget-object v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;->Recording:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;->Stoped:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;->a:[Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;->a:[Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    return-object v0
.end method
