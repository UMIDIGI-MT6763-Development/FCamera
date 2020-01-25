.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->onFrameRendered(Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3$1;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3$1;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;

    iget-object v0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getFrameDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$TuSDKLiveVideoCameraDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3$1;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;

    iget-object v0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getFrameDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$TuSDKLiveVideoCameraDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3$1;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;

    iget-object v1, v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->c(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$TuSDKLiveVideoCameraDelegate;->onFrameDataAvailable([B)V

    :cond_0
    return-void
.end method
