.class Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;
.super Ljava/lang/Object;


# instance fields
.field public buff:[B

.field public isReadyToFill:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->isReadyToFill:Z

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->buff:[B

    return-void
.end method
