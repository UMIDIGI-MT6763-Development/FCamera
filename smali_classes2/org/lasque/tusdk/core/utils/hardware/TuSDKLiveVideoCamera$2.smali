.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->stopRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$2;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$2;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->b(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->setEnabled(Z)V

    return-void
.end method
