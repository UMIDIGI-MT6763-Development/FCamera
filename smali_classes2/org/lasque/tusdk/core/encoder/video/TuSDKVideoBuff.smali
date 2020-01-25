.class public Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;
.super Ljava/lang/Object;


# instance fields
.field public buff:[B

.field public colorFormat:I

.field public isReadyToFill:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->colorFormat:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->isReadyToFill:Z

    iput p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->colorFormat:I

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    iget-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    div-int/lit8 v0, p2, 0x2

    const/16 v1, 0x7f

    invoke-static {p1, v0, p2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method
